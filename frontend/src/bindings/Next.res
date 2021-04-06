module Head = {
  @module("next/head") @react.component
  external make: (~children: React.element) => React.element = "default"
}

module Image = {
  module Fill = {
    @module("next/image") @react.component
    external make: (
      ~src: string,
      ~layout: string,
      ~alt: string=?,
      ~className: string=?,
      ~loader: string=?,
      ~quality: int=?,
      ~sizes: string=?,
      ~priority: bool=?,
      ~loading: string=?,
    ) => React.element = "default"
  }

  @module("next/image") @react.component
  external make: (
    ~src: string,
    ~width: int=?,
    ~height: int=?,
    ~alt: string=?,
    ~layout: string=?,
    ~loader: string=?,
    ~quality: int=?,
    ~sizes: string=?,
    ~priority: bool=?,
    ~loading: string=?,
    ~className: string=?,
  ) => React.element = "default"
}

module Error = {
  @module("next/head") @react.component
  external make: (~statusCode: int, ~children: React.element) => React.element = "default"
}

module Link = {
  @module("next/link") @react.component
  external make: (
    ~href: string=?,
    @as("as") ~target: string=?,
    ~prefetch: option<bool>=?,
    ~replace: option<bool>=?,
    ~shallow: option<bool>=?,
    ~passHref: option<bool>=?,
    ~children: React.element,
  ) => React.element = "default"
}
