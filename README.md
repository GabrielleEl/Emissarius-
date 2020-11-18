<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)


<!-- ABOUT THE PROJECT -->
## About The Project

This application works as a registration for an ID to provide verification of a user's personal data. As a hobbyist and Master's student in international development and economics, I wanted to merge my ideas of proof-of-existence and SSI (self-sovergin-identity) into a flexible framework dApp that will be used as a proof-of-concept for my master's thesis. This is not meant to be the final product and it will continute to be worked on alongside my thesis. This dApp was made with social scientists in mind and includes the following assumptions: 

* It was created by a social scientist *for social scientists* to evaluate 
* This was made by a non-developer and may not suit those who possess a higher level understanding of web development
* It is intended to be used as a framework in conjunction with my Master's thesis and I fully intend for this to be a collobrative effort between social scientists and professional developers after this course ends. 


### Built With

* [Trufflesuite](https://www.trufflesuite.com/)
* [Remix](https://remix.ethereum.org/)
* [Mythx](https://mythx.io/)
* [Metamask](https://metamask.io/)


<!-- GETTING STARTED -->
## Getting Started

Below I have outlined steps and obstacles during production.

### Prerequisites
For this project I used homebrew, if you do not have homebrew, download and follow the installation steps here [homebrew](https://brew.sh/)

The following need to be installed. 

npm install
```
npm install -g ganache-cli 
```

npm install truffle
```
npm install -g truffle 
```

Ganache CLI and Truffle shoudld now be installed on your machine. 

### Installation

1. Clone the repo
```
git clone https://github.com/github_username/repo_name.git
```

2. Open homebrew shell and navigate to the root directory. 

3. Start ganache-cli in terminal 
```
ganache-cli 
```
4. Run a local development server (I tried using a lite-server but could not figure out how to work around premissions on my OS even with using --force, uninstalling/reinstalling, and sudo install)  

5. However, there is an initialized package.json file and package-locked.json file that can be used. Users without a MAC may have an easier time reaching the server, which is located on localhost:3000

6. To run the liteserver: 
```
npm start
``` 
	* Note during development, Truffle did not compile due to there being a type error between Truffle and the open zeppelin libraries. I tried to work around this with the npm install command below*. 

	* For more about this type error visit [github] (https://github.com/OpenZeppelin/openzeppelin-contracts/issues/409)* 
	* However, this did not work for me and I decided to deploy from Remix because my contracts compiled successfully with Remix* 


```
npm install --save-dev@openzeppelin/contracts
```

Alternatively these steps where followed to deploy the contract:

1. Open Remix IDE, copy both Emissarius and Speed Bump into browser 
![Remix Browser](https://drive.google.com/file/d/1J3eEGqwhdGX9JDY9MbRyKnCK4Tp-q5d1/view)

2. Open Terminal and start 
```
ganache-cli
```

3. Navigate to MM and inject seed phrase from ganache and create new password 
![SeedPhrase](https://drive.google.com/file/d/1J3eEGqwhdGX9JDY9MbRyKnCK4Tp-q5d1/view)

4. Navigate to Run tab on Remix (make sure to select and compare Web3 Provider (8545) with ganache) 


5. On external node request, see Web3 provider endpoint (127.0.0.1.8545) select "ok" 

6. Deploy and or publish to IPFS 
	* The contract does deploy and is able to be uploaded to Etherscan/verifyContract but it cannot be found on Etherscan which is curious. Possible error could have been in adding the library addresses that are needed to publish since I used several libraries. 




<!-- USAGE EXAMPLES -->
## Usage

Emissarius could be used in various scenarious for the identity-insecure. Below I have outlined various potential proxy user stories that have been researched for my master's thesis: 

* Under-identified user X needs to evacuate their home country due to the fallout from a prolapsed economy. User X wants to immigrate to country Y; however, user X lost their proper documentation in a climate change related event. User X knows that they can register their identity with their local government to begin the process of creating an SSI. 
* Identification-insecure user A knows that they have a verifiable credential but is not sure where it is. This is a verification issues for user A. User A needs to prove their existence in order to gain financial freedom associated with obtaining a job. 
* There are assumptions within these two cases that are worthy to note. To truly have a bordless SSI in our current centralized world there would need to be high cooperation among INGOS & governmental agencies/institutions, valid & high fault-tolerance, and trustless human-centered social engineering. This project serves as more of a thought experiment than a real executable dApp due to the limiting factors of socio-political limitations.    

Examples of the process are below: 

```
struct DigIdentity { address ownerAddress; string name; string birthDate; string nationality; string bloodType; } 
```

The registration process is simple and outlined below: 

```
function registerDigIdentity(string memory _name, string memory _birthDate, string memory _nationality, string memory _bloodType) public view 
``` 


<!-- CONTRIBUTING -->
## Contributing

Any contributions from the open source community is **highly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the SPDX-License-Identifier: UNLICENSED



<!-- CONTACT -->
## Contact

Gabrielle Hibbert -  ghibbert@brandeis.edu 

Project Link: [https://github.com/GabrielleEl/Emissarius](https://github.com/GabrielleEl/Emissarius-)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Blank README Template](https://github.com/othneildrew/Best-README-Template)
* [Open Source License](https://spdx.org/licenses/)
* [MacDown](https://macdown.uranusjr.com/) 





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo.svg?style=flat-square
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo.svg?style=flat-square
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo.svg?style=flat-square
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=flat-square
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=flat-square
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
[product-screenshot]: images/screenshot.png



