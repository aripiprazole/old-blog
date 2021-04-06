module Fi = {
  module Github = {
    @module("react-icons/fi") @react.component
    external make: (
      ~color: string=?,
      ~title: string=?,
      ~size: int=?,
      ~children: React.element=?,
    ) => React.element = "FiGithub"
  }

  module Instagram = {
    @module("react-icons/fi") @react.component
    external make: (
      ~color: string=?,
      ~title: string=?,
      ~size: int=?,
      ~children: React.element=?,
    ) => React.element = "FiInstagram"
  }

  module Twitter = {
    @module("react-icons/fi") @react.component
    external make: (
      ~color: string=?,
      ~title: string=?,
      ~size: int=?,
      ~children: React.element=?,
    ) => React.element = "FiTwitter"
  }
}
