{
  "targets": [
    {
      "target_name": "get_interface_style",
      "sources": [ "get_interface_style.mm" ],
      "include_dirs": [
        "<!(node -e \"require('nan')\")"
      ],
      "link_settings": {
        "libraries": ["/System/Library/Frameworks/Foundation.framework"]
      }
    }
  ]
}
