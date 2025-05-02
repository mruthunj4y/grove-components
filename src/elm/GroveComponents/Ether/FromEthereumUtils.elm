module GroveComponents.Ether.FromEthereumUtils exposing
    ( assetAddressToEtherAddress
    , contractAddressToEtherAddress
    , customerAddressToEtherAddress
    )

import GroveComponents.Eth.Ethereum exposing (Account(..), AssetAddress(..), ContractAddress(..), CustomerAddress(..))
import GroveComponents.Ether.Address as EtherAddress exposing (Address(..))


assetAddressToEtherAddress : AssetAddress -> Result String Address
assetAddressToEtherAddress assetAddress =
    case assetAddress of
        Asset assetString ->
            EtherAddress.parseHex assetString


contractAddressToEtherAddress : ContractAddress -> Result String Address
contractAddressToEtherAddress contractAddress =
    case contractAddress of
        Contract addr ->
            EtherAddress.parseHex addr


customerAddressToEtherAddress : CustomerAddress -> Result String Address
customerAddressToEtherAddress customerAddress =
    case customerAddress of
        Customer addressString ->
            EtherAddress.parseHex addressString
