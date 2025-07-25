johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$ npx hardhat test


  Lock
    Deployment
      1) Should set the right unlockTime
      2) Should set the right owner
      3) Should receive and store the funds to lock
      4) Should fail if the unlockTime is not in the future
    Withdrawals
      Validations
        5) Should revert with the right error if called too soon
        6) Should revert with the right error if called from another account
        7) Shouldn't fail if the unlockTime has arrived and the owner calls it
      Events
        8) Should emit an event on withdrawals
      Transfers
        9) Should transfer the funds to the owner

  RentSure
    10) "before each" hook for "should let tenant pay rent"


  0 passing (850ms)
  10 failing

  1) Lock
       Deployment
         Should set the right unlockTime:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:30:36)

  2) Lock
       Deployment
         Should set the right owner:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:36:31)

  3) Lock
       Deployment
         Should receive and store the funds to lock:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:42:38)

  4) Lock
       Deployment
         Should fail if the unlockTime is not in the future:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:54:20)

  5) Lock
       Withdrawals
         Validations
           Should revert with the right error if called too soon:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:64:26)

  6) Lock
       Withdrawals
         Validations
           Should revert with the right error if called from another account:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:72:52)

  7) Lock
       Withdrawals
         Validations
           Shouldn't fail if the unlockTime has arrived and the owner calls it:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:86:38)

  8) Lock
       Withdrawals
         Events
           Should emit an event on withdrawals:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:99:52)

  9) Lock
       Withdrawals
         Transfers
           Should transfer the funds to the owner:
     HardhatError: HH700: Artifact for contract "Lock" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at deployOneYearLockFixture (C:\Users\johnp\RentSure\test\Lock.js:22:18)
      at loadFixture (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hard
hat-network-helpers\src\loadFixture.ts:59:18)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\Lock.js:113:59)

  10) RentSure
       "before each" hook for "should let tenant pay rent":
     HardhatError: HH700: Artifact for contract "RentSure" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\
node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modul
es\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardha
t\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\sr
c\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundati
on\hardhat-ethers\src\internal\helpers.ts:120:22)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\RentSure.js:10:22)



················································································
·····························
|  Solidity and Network Configuration
                            │
························|··················|···············|··················|·
·····························
|  Solidity: 0.8.28     ·  Optim: false    ·  Runs: 200    ·  viaIR: false    ·
   Block: 30,000,000 gas    │
························|··················|···············|··················|·
·····························
|  Methods
                            │
························|··················|···············|··················|·
············|················
|  Contracts / Methods  ·  Min             ·  Max          ·  Avg             ·
 # calls    ·  usd (avg)    │
························|··················|···············|··················|·
  0 passing (237ms)
  1 failing

  1) RentSure
       "before each" hook for "should let tenant pay rent":
     HardhatError: HH700: Artifact for contract "RentSure" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hardhat-ethers\src\internal\helpers.ts:120:22)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\RentSure.js:10:22)
·····························
|  Toolchain:  hardhat
                            │
·············································································································
|  Solidity and Network Configuration                                                                       │
························|··················|···············|··················|······························
|  Solidity: 0.8.28     ·  Optim: false    ·  Runs: 200    ·  viaIR: false    ·    Block: 30,000,000 gas    │
························|··················|···············|··················|······························
|  Methods                                                                                                  │
························|··················|···············|··················|·············|················
|  Contracts / Methods  ·  Min             ·  Max          ·  Avg             ·  # calls    ·  usd (avg)    │
························|··················|···············|··················|·············|················
|  Key                                                                                                      │
·············································································································
|  ◯  Execution gas for this method does not include intrinsic gas overhead                                 │
·············································································································
|  △  Cost was non-zero but below the precision setting for the currency display (see options)              │
·············································································································
|  Toolchain:  hardhat                                                                                      │
·············································································································

johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$ RentSure/contracts/RentSure.sol
bash: RentSure/contracts/RentSure.sol: No such file or directory

johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$ ls contracts
RentSure.sol

johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$ npx hardhat clean

johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$ npx hardhat compile
Warning: SPDX license identifier not provided in source file. Before publishing, consider adding a comment containing "SPDX-License-Identifier: <SPDX-License>" to each source file. Use "SPDX-License-Identifier: UNLICENSED" fo
r non-open-source code. Please see https://spdx.org for more information.
--> contracts/RentSure.sol


Warning: Source file does not specify required compiler version! Consider adding "pragma solidity ^0.8.28;"
--> contracts/RentSure.sol


Compiled 1 Solidity file successfully (evm target: paris).

johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$ npx hardhat test


  RentSure
    1) "before each" hook for "should let tenant pay rent"


  0 passing (290ms)
  1 failing

  1) RentSure
       "before each" hook for "should let tenant pay rent":
     HardhatError: HH700: Artifact for contract "RentSure" not found.
      at Artifacts._handleWrongArtifactForContractName (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:721:11)
      at Artifacts._getArtifactPathFromFiles (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:852:19)
      at Artifacts._getArtifactPath (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:516:21)
      at Artifacts.readArtifact (C:\Users\johnp\RentSure\node_modules\hardhat\src\internal\artifacts.ts:71:26)
      at getContractFactory (C:\Users\johnp\RentSure\node_modules\@nomicfoundation\hardhat-ethers\src\internal\helpers.ts:120:22)
      at Context.<anonymous> (C:\Users\johnp\RentSure\test\RentSure.js:10:22)



·············································································································
|  Solidity and Network Configuration                                                                       │
························|··················|···············|··················|······························
|  Solidity: 0.8.28     ·  Optim: false    ·  Runs: 200    ·  viaIR: false    ·    Block: 30,000,000 gas    │
························|··················|···············|··················|······························
|  Methods                                                                                                  │
························|··················|···············|··················|·············|················
|  Contracts / Methods  ·  Min             ·  Max          ·  Avg             ·  # calls    ·  usd (avg)    │
························|··················|···············|··················|·············|················
|  Key                                                                                                      │
·············································································································
|  ◯  Execution gas for this method does not include intrinsic gas overhead                                 │
·············································································································
|  △  Cost was non-zero but below the precision setting for the currency display (see options)              │
·············································································································
|  Toolchain:  hardhat                                                                                      │
·············································································································

johnp@LAPTOP-A34354S9 MINGW64 ~/RentSure
$
