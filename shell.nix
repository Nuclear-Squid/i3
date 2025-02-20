{ pkgs ? import <nixpkgs> {} }:
with pkgs;
mkShell {
    name = "i3-dev-shell";

    nativeBuildInputs = [
        meson
        libstartup_notification
        pkg-config
        xorg.libxcb
        xorg.xcbutil
        xcb-util-cursor
        xorg.xcbutilkeysyms
        xorg.xcbutilwm
        xcbutilxrm
        libxkbcommon
        yajl
        pcre2
        cairo
        pango
        libev
        openssl
        ninja
        rt
        iconv
    ];

    # preConfigure = ''
    # '';

    # shellHook = ''
    #     export LIBRARY_PATH=${libev}/lib
    #     export LDFLAGS="-L/usr/local/lib"
    #     export CPPFLAGS="-I/usr/local/include"
    #     meson setup --wipe ./build
    # '';

}
