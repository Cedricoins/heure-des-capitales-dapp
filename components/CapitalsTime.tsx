"use client"; // Client-side component

import { useAccount, useConnect, useReadContract, useSignMessage, useWriteContract } from 'wagmi';
import { useEffect, useState } from 'react';
import { createPublicClient, http } from 'viem';
import { sepolia } from 'wagmi/chains';

const contractAddress = '0x0000000000000000000000000000000000000000' as const; // REMPLACEZ PAR L'ADRESSE DU CONTRAT DÉPLOYÉ

const abi = [
  {
    "inputs": [],
    "name": "getCapitalCount",
    "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [{ "internalType": "uint256", "name": "index", "type": "uint256" }],
    "name": "getCapital",
    "outputs": [
      { "internalType": "string", "name": "country", "type": "string" },
      { "internalType": "string", "name": "city", "type": "string" },
      { "internalType": "int256", "name": "offset", "type": "int256" }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "connect",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  }
] as const;

interface Capital {
  country: string;
  city: string;
  offset: bigint;
}

export default function CapitalsTime() {
  const { address, isConnected } = useAccount();
  const { connectAsync, connectors } = useConnect();
  const { signMessageAsync } = useSignMessage();
  const { writeContractAsync } = useWriteContract();

  const { data: count } = useReadContract({
    address: contractAddress,
    abi,
    functionName: 'getCapitalCount',
  });

  const [capitals, setCapitals] = useState<Capital[]>([]);
  const [selectedCity, setSelectedCity] = useState<string>('');
  const [currentTime, setCurrentTime] = useState(Date.now());
  const [error, setError] = useState<string>('');

  // Fetcher toutes les capitales
  useEffect(() => {
    if (count) {
      const fetchCapitals = async () => {
        const client = createPublicClient({ chain: sepolia, transport: http() });
        const promises = [];
        for (let i = 0; i < Number(count); i++) {
          promises.push(client.readContract({
            address: contractAddress,
            abi,
            functionName: 'getCapital',
            args: [BigInt(i)],
          }));
        }
        const results = await Promise.all(promises);
        setCapitals(results as Capital[]);
        if (results.length > 0) setSelectedCity((results[0] as Capital).city); // Sélection par défaut
      };
      fetchCapitals();
    }
  }, [count]);

  // Mise à jour de l'heure toutes les secondes
  useEffect(() => {
    const interval = setInterval(() => setCurrentTime(Date.now()), 1000);
    return () => clearInterval(interval);
  }, []);

  // Calcul de l'heure locale
  const getLocalTime = () => {
    if (!selectedCity) return '';
    const capital = capitals.find(c => c.city === selectedCity);
    if (!capital) return '';
    const offset = Number(capital.offset);
    const utcTime = currentTime / 1000;
    const localTimestamp = utcTime + offset;
    const localDate = new Date(localTimestamp * 1000);
    return localDate.toUTCString().replace('GMT', '').trim(); // Affiche l'heure locale simulée
  };

  // Gestion de la connexion + signature + transaction
  const handleConnect = async () => {
    setError('');
    try {
      if (!isConnected) {
        await connectAsync({ connector: connectors[0] }); // Injected (MetaMask)
      }
      const signature = await signMessageAsync({ message: "bienvenue sur heure des capitales" });
      if (signature) {
        await writeContractAsync({
          address: contractAddress,
          abi,
          functionName: 'connect',
        });
        alert('Connexion réussie !');
      }
    } catch (err) {
      setError(`Erreur : ${(err as Error).message}`);
    }
  };

  return (
    <div>
      <button onClick={handleConnect} disabled={!!error}>
        Se connecter
      </button>
      {error && <p style={{ color: 'red' }}>{error}</p>}
      {address && <p>Connecté avec : {address}</p>}

      <select value={selectedCity} onChange={(e) => setSelectedCity(e.target.value)}>
        {capitals.map((c, i) => (
          <option key={i} value={c.city}>
            {`${c.city}, ${c.country}`}
          </option>
        ))}
      </select>

      {selectedCity && <p>L'heure actuelle à {selectedCity} est : {getLocalTime()}</p>}
    </div>
  );
}
