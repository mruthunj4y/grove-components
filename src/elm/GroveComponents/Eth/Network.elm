module GroveComponents.Eth.Network exposing (Network(..), getEtherscanDomain, networkFromId, networkFromName, networkId, networkName)

-- From https://ethereum.stackexchange.com/a/17101


type Network
    = MainNet
    | xrplevm
    | Development
    | Unknown


networkFromId : Int -> Network
networkFromId networkIdVal =
    case networkIdVal of
        1 ->
            MainNet

        1449000 ->
            xrplevm

        999 ->
            Development

        _ ->
            Unknown


networkFromName : String -> Network
networkFromName name =
    case String.toLower name of
        "mainnet" ->
            MainNet

        "xrplevm" ->
            xrplevm

        "development" ->
            Development

        _ ->
            MainNet


networkName : Network -> String
networkName network =
    case network of
        MainNet ->
            "Mainnet"

        xrplevm ->
            "xrplevm"

        Development ->
            "Development"

        Unknown ->
            "unknown"


networkId : Network -> Int
networkId network =
    case network of
        MainNet ->
            1
        
        xrplevm ->
            1449000

        Development ->
            999

        Unknown ->
            9999


getEtherscanDomain : Network -> Maybe String
getEtherscanDomain network =
    case network of
        MainNet ->
            Just "etherscan.io"

        xrplevm ->
            Just "explorer.testnet.xrplevm.org"

        Development ->
            Nothing

        Unknown ->
            Nothing
