export PATH=${PWD}/bin:${PWD}:$PATH
export FABRIC_CFG_PATH=$PWD
export FABRIC_CA_CLIENT_HOME=${PWD}/organizations/peerOrganizations/org1.example.com/

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_ADDRESS=localhost:7051
export TARGET_TLS_OPTIONS="-o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem --peerAddresses localhost:7051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt --peerAddresses localhost:9051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt"

# peer chaincode invoke $TARGET_TLS_OPTIONS -C mychannel -n ercToken -c '{"function":"MintWithTokenURI","Args":["103", "https://example.com/nft102.json"]}'
# peer chaincode query -C mychannel -n ercToken -c '{"function":"ReadNFT","Args":["101"]}'
peer chaincode query -C mychannel -n ercToken -c '{"function":"ClientAccountID","Args":[]}'
# export MINTER="x509::/C=US/ST=California/L=San Francisco/OU=admin/CN=Admin@org1.example.com::/C=US/ST=California/L=San Francisco/O=org1.example.com/CN=ca.org1.example.com"
# export RECIPIENT="x509::/C=US/ST=California/L=San Francisco/OU=admin/CN=Admin@org2.example.com::/C=US/ST=California/L=San Francisco/O=org2.example.com/CN=ca.org2.example.com"
# peer chaincode invoke $TARGET_TLS_OPTIONS -C mychannel -n ercToken -c '{"function":"TransferFrom","Args":["'"$MINTER"'", "'"$RECIPIENT"'","101"]}'
# peer chaincode query -C mychannel -n ercToken -c '{"function":"ClientAccountBalance","Args":[]}'
