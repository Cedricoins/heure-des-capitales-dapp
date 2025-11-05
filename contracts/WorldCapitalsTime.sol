pragma solidity ^0.8.0;

struct Capital {
    string country;
    string city;
    int offset; // décalage en secondes par rapport à UTC
}

contract WorldCapitalsTime {
    Capital[] public capitals;

    event Connected(address indexed user);

    constructor() {
        capitals.push(Capital({country: "Afghanistan", city: "Kabul", offset: 16200}));
        capitals.push(Capital({country: "Albania", city: "Tirana", offset: 3600}));
        capitals.push(Capital({country: "Algeria", city: "Algiers", offset: 3600}));
        capitals.push(Capital({country: "American Samoa", city: "Pago Pago", offset: -39600}));
        capitals.push(Capital({country: "Andorra", city: "Andorra la Vella", offset: 3600}));
        capitals.push(Capital({country: "Angola", city: "Luanda", offset: 3600}));
        capitals.push(Capital({country: "Anguilla", city: "The Valley", offset: -14400}));
        capitals.push(Capital({country: "Antigua and Barbuda", city: "St. John's", offset: -14400}));
        capitals.push(Capital({country: "Argentina", city: "Buenos Aires", offset: -10800}));
        capitals.push(Capital({country: "Armenia", city: "Yerevan", offset: 14400}));
        capitals.push(Capital({country: "Aruba", city: "Oranjestad", offset: -14400}));
        capitals.push(Capital({country: "Australia", city: "Canberra, ACT", offset: 39600}));
        capitals.push(Capital({country: "Austria", city: "Vienna", offset: 3600}));
        capitals.push(Capital({country: "Azerbaijan", city: "Baku", offset: 14400}));
        capitals.push(Capital({country: "Bahamas", city: "Nassau", offset: -18000}));
        capitals.push(Capital({country: "Bahrain", city: "Manama", offset: 10800}));
        capitals.push(Capital({country: "Bangladesh", city: "Dhaka", offset: 21600}));
        capitals.push(Capital({country: "Barbados", city: "Bridgetown", offset: -14400}));
        capitals.push(Capital({country: "Belarus", city: "Minsk", offset: 10800}));
        capitals.push(Capital({country: "Belgium", city: "Brussels", offset: 3600}));
        capitals.push(Capital({country: "Belize", city: "Belmopan", offset: -21600}));
        capitals.push(Capital({country: "Benin", city: "Porto-Novo", offset: 3600}));
        capitals.push(Capital({country: "Bermuda", city: "Hamilton", offset: -14400}));
        capitals.push(Capital({country: "Bhutan", city: "Thimphu", offset: 21600}));
        capitals.push(Capital({country: "Bolivia", city: "La Paz", offset: -14400}));
        capitals.push(Capital({country: "Bosnia and Herzegovina", city: "Sarajevo", offset: 3600}));
        capitals.push(Capital({country: "Botswana", city: "Gaborone", offset: 7200}));
        capitals.push(Capital({country: "Brazil", city: "Brasilia", offset: -10800}));
        capitals.push(Capital({country: "British Virgin Islands", city: "Road Town", offset: -14400}));
        capitals.push(Capital({country: "Brunei", city: "Bandar Seri Begawan", offset: 28800}));
        capitals.push(Capital({country: "Bulgaria", city: "Sofia", offset: 7200}));
        capitals.push(Capital({country: "Burkina Faso", city: "Ouagadougou", offset: 0}));
        capitals.push(Capital({country: "Burma (Myanmar)", city: "Yangon", offset: 23400}));
        capitals.push(Capital({country: "Burundi", city: "Bujumbura", offset: 7200}));
        capitals.push(Capital({country: "Cambodia", city: "Phnom Penh", offset: 25200}));
        capitals.push(Capital({country: "Cameroon", city: "Yaoundé", offset: 3600}));
        capitals.push(Capital({country: "Canada", city: "Ottawa, ON", offset: -18000}));
        capitals.push(Capital({country: "Cape Verde", city: "Praia", offset: -3600}));
        capitals.push(Capital({country: "Cayman Islands", city: "George Town", offset: -18000}));
        capitals.push(Capital({country: "Central African Republic", city: "Bangui", offset: 3600}));
        capitals.push(Capital({country: "Chad", city: "N'Djamena", offset: 3600}));
        capitals.push(Capital({country: "Chile", city: "Santiago", offset: -10800}));
        capitals.push(Capital({country: "China", city: "Beijing", offset: 28800}));
        capitals.push(Capital({country: "Christmas Island", city: "Flying Fish Cove", offset: 25200}));
        capitals.push(Capital({country: "Colombia", city: "Bogota", offset: -18000}));
        capitals.push(Capital({country: "Comoros", city: "Moroni", offset: 10800}));
        capitals.push(Capital({country: "Congo-Brazzaville", city: "Brazzaville", offset: 3600}));
        capitals.push(Capital({country: "Congo-Kinshasa", city: "Kinshasa", offset: 3600}));
        capitals.push(Capital({country: "Cook Islands", city: "Avarua", offset: -36000}));
        capitals.push(Capital({country: "Costa Rica", city: "San José", offset: -21600}));
        capitals.push(Capital({country: "Croatia", city: "Zagreb", offset: 3600}));
        capitals.push(Capital({country: "Cuba", city: "Havana", offset: -18000}));
        capitals.push(Capital({country: "Curaçao", city: "Willemstad", offset: -14400}));
        capitals.push(Capital({country: "Cyprus", city: "Nicosia", offset: 7200}));
        capitals.push(Capital({country: "Czech Republic", city: "Prague", offset: 3600}));
        capitals.push(Capital({country: "Denmark", city: "Copenhagen", offset: 3600}));
        capitals.push(Capital({country: "Djibouti", city: "Djibouti", offset: 10800}));
        capitals.push(Capital({country: "Dominica", city: "Roseau", offset: -14400}));
        capitals.push(Capital({country: "Dominican Republic", city: "Santo Domingo", offset: -14400}));
        capitals.push(Capital({country: "Ecuador", city: "Quito", offset: -18000}));
        capitals.push(Capital({country: "Egypt", city: "Cairo", offset: 7200}));
        capitals.push(Capital({country: "El Salvador", city: "San Salvador", offset: -21600}));
        capitals.push(Capital({country: "Equatorial Guinea", city: "Malabo", offset: 3600}));
        capitals.push(Capital({country: "Eritrea", city: "Asmara", offset: 10800}));
        capitals.push(Capital({country: "Estonia", city: "Tallinn", offset: 7200}));
        capitals.push(Capital({country: "Ethiopia", city: "Addis Ababa", offset: 10800}));
        capitals.push(Capital({country: "Falkland Islands", city: "Stanley", offset: -10800}));
        capitals.push(Capital({country: "Faroe Islands", city: "Tórshavn", offset: 0}));
        capitals.push(Capital({country: "Fiji", city: "Suva", offset: 43200}));
        capitals.push(Capital({country: "Finland", city: "Helsinki", offset: 7200}));
        capitals.push(Capital({country: "France", city: "Paris", offset: 3600}));
        capitals.push(Capital({country: "French Guiana", city: "Cayenne", offset: -10800}));
        capitals.push(Capital({country: "French Polynesia", city: "Papeete", offset: -36000}));
        capitals.push(Capital({country: "Gabon", city: "Libreville", offset: 3600}));
        capitals.push(Capital({country: "Gambia", city: "Banjul", offset: 0}));
        capitals.push(Capital({country: "Georgia", city: "Tbilisi", offset: 14400}));
        capitals.push(Capital({country: "Germany", city: "Berlin", offset: 3600}));
        capitals.push(Capital({country: "Ghana", city: "Accra", offset: 0}));
        capitals.push(Capital({country: "Gibraltar", city: "Gibraltar", offset: 3600}));
        capitals.push(Capital({country: "Greece", city: "Athens", offset: 7200}));
        capitals.push(Capital({country: "Grenada", city: "St. George's", offset: -14400}));
        capitals.push(Capital({country: "Guadeloupe", city: "Basse-Terre", offset: -14400}));
        capitals.push(Capital({country: "Guam", city: "Hagatna", offset: 36000}));
        capitals.push(Capital({country: "Guatemala", city: "Guatemala City", offset: -21600}));
        capitals.push(Capital({country: "Guinea", city: "Conakry", offset: 0}));
        capitals.push(Capital({country: "Guinea-Bissau", city: "Bissau", offset: 0}));
        capitals.push(Capital({country: "Guyana", city: "Georgetown", offset: -14400}));
        capitals.push(Capital({country: "Haiti", city: "Port-au-Prince", offset: -18000}));
        capitals.push(Capital({country: "Holy See (Vatican)", city: "Vatican City", offset: 3600}));
        capitals.push(Capital({country: "Honduras", city: "Tegucigalpa", offset: -21600}));
        capitals.push(Capital({country: "Hungary", city: "Budapest", offset: 3600}));
        capitals.push(Capital({country: "Iceland", city: "Reykjavik", offset: 0}));
        capitals.push(Capital({country: "India", city: "New Delhi", offset: 19800}));
        capitals.push(Capital({country: "Indonesia", city: "Jakarta", offset: 25200}));
        capitals.push(Capital({country: "Iran", city: "Tehran", offset: 12600}));
        capitals.push(Capital({country: "Iraq", city: "Baghdad", offset: 10800}));
        capitals.push(Capital({country: "Ireland", city: "Dublin", offset: 0}));
        capitals.push(Capital({country: "Israel", city: "Tel Aviv", offset: 7200}));
        capitals.push(Capital({country: "Italy", city: "Rome", offset: 3600}));
        capitals.push(Capital({country: "Ivory Coast", city: "Yamoussoukro", offset: 0}));
        capitals.push(Capital({country: "Jamaica", city: "Kingston", offset: -18000}));
        capitals.push(Capital({country: "Japan", city: "Tokyo", offset: 32400}));
        capitals.push(Capital({country: "Jordan", city: "Amman", offset: 10800}));
        capitals.push(Capital({country: "Kazakhstan", city: "Astana", offset: 18000}));
        capitals.push(Capital({country: "Kenya", city: "Nairobi", offset: 10800}));
        capitals.push(Capital({country: "Kiribati", city: "South Tarawa", offset: 43200}));
        capitals.push(Capital({country: "Kuwait", city: "Kuwait City", offset: 10800}));
        capitals.push(Capital({country: "Kyrgyzstan", city: "Bishkek", offset: 21600}));
        capitals.push(Capital({country: "Laos", city: "Vientiane", offset: 25200}));
        capitals.push(Capital({country: "Latvia", city: "Riga", offset: 7200}));
        capitals.push(Capital({country: "Lebanon", city: "Beirut", offset: 7200}));
        capitals.push(Capital({country: "Lesotho", city: "Maseru", offset: 7200}));
        capitals.push(Capital({country: "Liberia", city: "Monrovia", offset: 0}));
        capitals.push(Capital({country: "Libya", city: "Tripoli", offset: 7200}));
        capitals.push(Capital({country: "Liechtenstein", city: "Vaduz", offset: 3600}));
        capitals.push(Capital({country: "Lithuania", city: "Vilnius", offset: 7200}));
        capitals.push(Capital({country: "Luxembourg", city: "Luxembourg City", offset: 3600}));
        capitals.push(Capital({country: "Macau", city: "Macau", offset: 28800}));
        capitals.push(Capital({country: "Macedonia", city: "Skopje", offset: 3600}));
        capitals.push(Capital({country: "Madagascar", city: "Antananarivo", offset: 10800}));
        capitals.push(Capital({country: "Malawi", city: "Lilongwe", offset: 7200}));
        capitals.push(Capital({country: "Malaysia", city: "Kuala Lumpur", offset: 28800}));
        capitals.push(Capital({country: "Maldives", city: "Malé", offset: 18000}));
        capitals.push(Capital({country: "Mali", city: "Bamako", offset: 0}));
        capitals.push(Capital({country: "Malta", city: "Valletta", offset: 3600}));
        capitals.push(Capital({country: "Marshall Islands", city: "Majuro", offset: 43200}));
        capitals.push(Capital({country: "Martinique", city: "Fort-de-France", offset: -14400}));
        capitals.push(Capital({country: "Mauritania", city: "Nouakchott", offset: 0}));
        capitals.push(Capital({country: "Mauritius", city: "Port Louis", offset: 14400}));
        capitals.push(Capital({country: "Mexico", city: "Mexico City", offset: -21600}));
        capitals.push(Capital({country: "Micronesia", city: "Palikir", offset: 39600}));
        capitals.push(Capital({country: "Moldova", city: "Chisinau", offset: 7200}));
        capitals.push(Capital({country: "Monaco", city: "Monaco", offset: 3600}));
        capitals.push(Capital({country: "Mongolia", city: "Ulan Bator", offset: 28800}));
        capitals.push(Capital({country: "Montenegro", city: "Podgorica", offset: 3600}));
        capitals.push(Capital({country: "Montserrat", city: "Plymouth", offset: -14400}));
        capitals.push(Capital({country: "Morocco", city: "Rabat", offset: 3600}));
        capitals.push(Capital({country: "Mozambique", city: "Maputo", offset: 7200}));
        capitals.push(Capital({country: "Namibia", city: "Windhoek", offset: 7200}));
        capitals.push(Capital({country: "Nauru", city: "Yaren", offset: 43200}));
        capitals.push(Capital({country: "Nepal", city: "Kathmandu", offset: 20700}));
        capitals.push(Capital({country: "Netherlands", city: "The Hague", offset: 3600}));
        capitals.push(Capital({country: "New Caledonia", city: "Nouméa", offset: 39600}));
        capitals.push(Capital({country: "New Zealand", city: "Wellington", offset: 46800}));
        capitals.push(Capital({country: "Nicaragua", city: "Managua", offset: -21600}));
        capitals.push(Capital({country: "Niger", city: "Niamey", offset: 3600}));
        capitals.push(Capital({country: "Nigeria", city: "Abuja", offset: 3600}));
        capitals.push(Capital({country: "Niue", city: "Alofi", offset: -39600}));
        capitals.push(Capital({country: "North Korea", city: "Pyongyang", offset: 32400}));
        capitals.push(Capital({country: "Northern Mariana Islands", city: "Saipan", offset: 36000}));
        capitals.push(Capital({country: "Norway", city: "Oslo", offset: 3600}));
        capitals.push(Capital({country: "Oman", city: "Muscat", offset: 14400}));
        capitals.push(Capital({country: "Pakistan", city: "Islamabad", offset: 18000}));
        capitals.push(Capital({country: "Palau", city: "Koror", offset: 32400}));
        capitals.push(Capital({country: "Palestinian Territory", city: "Ramallah", offset: 7200}));
        capitals.push(Capital({country: "Panama", city: "Panama City", offset: -18000}));
        capitals.push(Capital({country: "Paraguay", city: "Asuncion", offset: -10800}));
        capitals.push(Capital({country: "Peru", city: "Lima", offset: -18000}));
        capitals.push(Capital({country: "Philippines", city: "Manila", offset: 28800}));
        capitals.push(Capital({country: "Pitcairn", city: "Adamstown", offset: -28800}));
        capitals.push(Capital({country: "Poland", city: "Warsaw", offset: 3600}));
        capitals.push(Capital({country: "Portugal", city: "Lisbon", offset: 0}));
        capitals.push(Capital({country: "Puerto Rico", city: "San Juan", offset: -14400}));
        capitals.push(Capital({country: "Qatar", city: "Doha", offset: 10800}));
        capitals.push(Capital({country: "Réunion", city: "Saint-Denis", offset: 14400}));
        capitals.push(Capital({country: "Romania", city: "Bucharest", offset: 7200}));
        capitals.push(Capital({country: "Russia", city: "Moscow", offset: 10800}));
        capitals.push(Capital({country: "Rwanda", city: "Kigali", offset: 7200}));
        capitals.push(Capital({country: "Saint Kitts and Nevis", city: "Basseterre", offset: -14400}));
        capitals.push(Capital({country: "Saint Lucia", city: "Castries", offset: -14400}));
        capitals.push(Capital({country: "Saint Vincent and the Grenadines", city: "Kingstown", offset: -14400}));
        capitals.push(Capital({country: "Samoa", city: "Apia", offset: 46800}));
        capitals.push(Capital({country: "San Marino", city: "San Marino", offset: 3600}));
        capitals.push(Capital({country: "Sao Tome and Principe", city: "Sao Tome", offset: 0}));
        capitals.push(Capital({country: "Saudi Arabia", city: "Riyadh", offset: 10800}));
        capitals.push(Capital({country: "Senegal", city: "Dakar", offset: 0}));
        capitals.push(Capital({country: "Serbia", city: "Belgrade", offset: 3600}));
        capitals.push(Capital({country: "Sierra Leone", city: "Freetown", offset: 0}));
        capitals.push(Capital({country: "Singapore", city: "Singapore", offset: 28800}));
        capitals.push(Capital({country: "Slovakia", city: "Bratislava", offset: 3600}));
        capitals.push(Capital({country: "Slovenia", city: "Ljubljana", offset: 3600}));
        capitals.push(Capital({country: "Solomon Islands", city: "Honiara", offset: 39600}));
        capitals.push(Capital({country: "Somalia", city: "Mogadishu", offset: 10800}));
        capitals.push(Capital({country: "South Africa", city: "Pretoria", offset: 7200}));
        capitals.push(Capital({country: "South Korea", city: "Seoul", offset: 32400}));
        capitals.push(Capital({country: "Spain", city: "Madrid", offset: 3600}));
        capitals.push(Capital({country: "Sri Lanka", city: "Colombo", offset: 19800}));
        capitals.push(Capital({country: "Sudan", city: "Khartoum", offset: 7200}));
        capitals.push(Capital({country: "Suriname", city: "Paramaribo", offset: -10800}));
        capitals.push(Capital({country: "Swaziland", city: "Mbabane", offset: 7200}));
        capitals.push(Capital({country: "Sweden", city: "Stockholm", offset: 3600}));
        capitals.push(Capital({country: "Switzerland", city: "Berne", offset: 3600}));
        capitals.push(Capital({country: "Syria", city: "Damascus", offset: 10800}));
        capitals.push(Capital({country: "Taiwan", city: "Taipei", offset: 28800}));
        capitals.push(Capital({country: "Tajikistan", city: "Dushanbe", offset: 18000}));
        capitals.push(Capital({country: "Tanzania", city: "Dar es Salaam", offset: 10800}));
        capitals.push(Capital({country: "Thailand", city: "Bangkok", offset: 25200}));
        capitals.push(Capital({country: "Timor-Leste", city: "Dili", offset: 32400}));
        capitals.push(Capital({country: "Togo", city: "Lomé", offset: 0}));
        capitals.push(Capital({country: "Tonga", city: "Nuku'alofa", offset: 46800}));
        capitals.push(Capital({country: "Trinidad and Tobago", city: "Port of Spain", offset: -14400}));
        capitals.push(Capital({country: "Tunisia", city: "Tunis", offset: 3600}));
        capitals.push(Capital({country: "Turkey", city: "Ankara", offset: 10800}));
        capitals.push(Capital({country: "Turkmenistan", city: "Ashgabat", offset: 18000}));
        capitals.push(Capital({country: "Turks and Caicos Islands", city: "Cockburn Town", offset: -18000}));
        capitals.push(Capital({country: "Tuvalu", city: "Funafuti", offset: 43200}));
        capitals.push(Capital({country: "Uganda", city: "Kampala", offset: 10800}));
        capitals.push(Capital({country: "Ukraine", city: "Kiev", offset: 7200}));
        capitals.push(Capital({country: "United Arab Emirates", city: "Abu Dhabi", offset: 14400}));
        capitals.push(Capital({country: "United Kingdom", city: "London", offset: 0}));
        capitals.push(Capital({country: "Uruguay", city: "Montevideo", offset: -10800}));
        capitals.push(Capital({country: "US Virgin Islands", city: "Charlotte Amalie", offset: -14400}));
        capitals.push(Capital({country: "USA", city: "Washington, DC", offset: -18000}));
        capitals.push(Capital({country: "Uzbekistan", city: "Tashkent", offset: 18000}));
        capitals.push(Capital({country: "Vanuatu", city: "Port Vila", offset: 39600}));
        capitals.push(Capital({country: "Venezuela", city: "Caracas", offset: -14400}));
        capitals.push(Capital({country: "Vietnam", city: "Hanoi", offset: 25200}));
        capitals.push(Capital({country: "Yemen", city: "Sana'a", offset: 10800}));
        capitals.push(Capital({country: "Zambia", city: "Lusaka", offset: 7200}));
        capitals.push(Capital({country: "Zimbabwe", city: "Harare", offset: 7200}));
    }

    function getCapitalCount() public view returns (uint) {
        return capitals.length;
    }

    function getCapital(uint index) public view returns (string memory country, string memory city, int offset) {
        require(index < capitals.length, "Index out of bounds");
        Capital memory cap = capitals[index];
        return (cap.country, cap.city, cap.offset);
    }

    function getLocalTimestamp(string memory _city) public view returns (uint) {
        for (uint i = 0; i < capitals.length; i++) {
            if (keccak256(bytes(capitals[i].city)) == keccak256(bytes(_city))) {
                if (capitals[i].offset >= 0) {
                    return block.timestamp + uint(capitals[i].offset);
                } else {
                    return block.timestamp - uint(-capitals[i].offset);
                }
            }
        }
        revert("City not found");
    }

    function connect() public {
        emit Connected(msg.sender);
    }
}
