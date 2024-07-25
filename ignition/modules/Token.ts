import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const LockModule = buildModule("TokenModule", (m) => {

    const token = m.contract("Token",);
    // console.log("Token", token)
    return { token };
});

export default LockModule;
