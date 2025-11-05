import { createConfig, http } from 'wagmi'
import { sepolia } from 'wagmi/chains' // Assume Sepolia; changez si besoin
import { injected } from 'wagmi/connectors' // Pour MetaMask/injected

export const config = createConfig({
  chains: [sepolia],
  connectors: [
    injected(),
    // Ajoutez walletConnect si besoin: walletConnect({ projectId: process.env.NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID }),
  ],
  transports: {
    [sepolia.id]: http(),
  },
})
