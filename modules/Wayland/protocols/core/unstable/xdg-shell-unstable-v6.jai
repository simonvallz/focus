/*
 * Auto-generated by `wayland-scanner` version 1.0.1
 * Protocol: xdg_shell_unstable_v6
 */

zxdg_shell_v6_interface: wl_interface;
zxdg_shell_v6 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zxdg_shell_v6_interface;

    /* ENUM: zxdg_shell_v6::error */
    error_role                  : u32 : 0;
    error_defunct_surfaces      : u32 : 1;
    error_not_the_topmost_popup : u32 : 2;
    error_invalid_popup_parent  : u32 : 3;
    error_invalid_surface_state : u32 : 4;
    error_invalid_positioner    : u32 : 5;

    set_user_data :: inline (self: *zxdg_shell_v6, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zxdg_shell_v6) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zxdg_shell_v6) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zxdg_shell_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_SHELL_V6_DESTROY);
        wl_proxy_destroy(self);
    }

    create_positioner :: inline (self: *zxdg_shell_v6) -> *zxdg_positioner_v6 #c_call {
        ret: *wl_proxy = wl_proxy_marshal_constructor_versioned(
            self, ZXDG_SHELL_V6_CREATE_POSITIONER,
            *zxdg_positioner_v6_interface, wl_proxy_get_version(self),
            null);
        return cast(*zxdg_positioner_v6) ret;
    }

    get_xdg_surface :: inline (self: *zxdg_shell_v6, surface: *wl_surface) -> *zxdg_surface_v6 #c_call {
        ret: *wl_proxy = wl_proxy_marshal_constructor_versioned(
            self, ZXDG_SHELL_V6_GET_XDG_SURFACE,
            *zxdg_surface_v6_interface, wl_proxy_get_version(self),
            null, surface);
        return cast(*zxdg_surface_v6) ret;
    }

    pong :: inline (self: *zxdg_shell_v6, serial: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_SHELL_V6_PONG,
            serial);
    }

    add_listener :: inline (self: *zxdg_shell_v6, listener: *zxdg_shell_v6_listener, data: *void) -> s32 #c_call {
        return wl_proxy_add_listener(self, cast(*generic_c_call) listener, data);
    }
}

ZXDG_SHELL_V6_DESTROY                 : u32 : 0;
ZXDG_SHELL_V6_CREATE_POSITIONER       : u32 : 1;
ZXDG_SHELL_V6_GET_XDG_SURFACE         : u32 : 2;
ZXDG_SHELL_V6_PONG                    : u32 : 3;
ZXDG_SHELL_V6_DESTROY_SINCE           : u32 : 1;
ZXDG_SHELL_V6_CREATE_POSITIONER_SINCE : u32 : 1;
ZXDG_SHELL_V6_GET_XDG_SURFACE_SINCE   : u32 : 1;
ZXDG_SHELL_V6_PONG_SINCE              : u32 : 1;
ZXDG_SHELL_V6_PING_SINCE              : u32 : 1;

zxdg_shell_v6_listener :: struct {
    ping := _stubs_.ping;

    _stubs_ :: struct {
        ping :: (data: *void,
            self: *zxdg_shell_v6,
            serial: u32) -> void #c_call {}
    }
}

zxdg_positioner_v6_interface: wl_interface;
zxdg_positioner_v6 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zxdg_positioner_v6_interface;

    /* ENUM: zxdg_positioner_v6::error */
    error_invalid_input : u32 : 0;

    /* ENUM: zxdg_positioner_v6::anchor */
    anchor_none   : u32 : 0;
    anchor_top    : u32 : 1;
    anchor_bottom : u32 : 2;
    anchor_left   : u32 : 4;
    anchor_right  : u32 : 8;

    /* ENUM: zxdg_positioner_v6::gravity */
    gravity_none   : u32 : 0;
    gravity_top    : u32 : 1;
    gravity_bottom : u32 : 2;
    gravity_left   : u32 : 4;
    gravity_right  : u32 : 8;

    /* ENUM: zxdg_positioner_v6::constraint_adjustment */
    constraint_adjustment_none     : u32 : 0;
    constraint_adjustment_slide_x  : u32 : 1;
    constraint_adjustment_slide_y  : u32 : 2;
    constraint_adjustment_flip_x   : u32 : 4;
    constraint_adjustment_flip_y   : u32 : 8;
    constraint_adjustment_resize_x : u32 : 16;
    constraint_adjustment_resize_y : u32 : 32;

    set_user_data :: inline (self: *zxdg_positioner_v6, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zxdg_positioner_v6) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zxdg_positioner_v6) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zxdg_positioner_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_DESTROY);
        wl_proxy_destroy(self);
    }

    set_size :: inline (self: *zxdg_positioner_v6, width: s32, height: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_SET_SIZE,
            width, height);
    }

    set_anchor_rect :: inline (self: *zxdg_positioner_v6, x: s32, y: s32, width: s32, height: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_SET_ANCHOR_RECT,
            x, y, width, height);
    }

    set_anchor :: inline (self: *zxdg_positioner_v6, anchor: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_SET_ANCHOR,
            anchor);
    }

    set_gravity :: inline (self: *zxdg_positioner_v6, gravity: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_SET_GRAVITY,
            gravity);
    }

    set_constraint_adjustment :: inline (self: *zxdg_positioner_v6, constraint_adjustment: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_SET_CONSTRAINT_ADJUSTMENT,
            constraint_adjustment);
    }

    set_offset :: inline (self: *zxdg_positioner_v6, x: s32, y: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_POSITIONER_V6_SET_OFFSET,
            x, y);
    }
}

ZXDG_POSITIONER_V6_DESTROY                         : u32 : 0;
ZXDG_POSITIONER_V6_SET_SIZE                        : u32 : 1;
ZXDG_POSITIONER_V6_SET_ANCHOR_RECT                 : u32 : 2;
ZXDG_POSITIONER_V6_SET_ANCHOR                      : u32 : 3;
ZXDG_POSITIONER_V6_SET_GRAVITY                     : u32 : 4;
ZXDG_POSITIONER_V6_SET_CONSTRAINT_ADJUSTMENT       : u32 : 5;
ZXDG_POSITIONER_V6_SET_OFFSET                      : u32 : 6;
ZXDG_POSITIONER_V6_DESTROY_SINCE                   : u32 : 1;
ZXDG_POSITIONER_V6_SET_SIZE_SINCE                  : u32 : 1;
ZXDG_POSITIONER_V6_SET_ANCHOR_RECT_SINCE           : u32 : 1;
ZXDG_POSITIONER_V6_SET_ANCHOR_SINCE                : u32 : 1;
ZXDG_POSITIONER_V6_SET_GRAVITY_SINCE               : u32 : 1;
ZXDG_POSITIONER_V6_SET_CONSTRAINT_ADJUSTMENT_SINCE : u32 : 1;
ZXDG_POSITIONER_V6_SET_OFFSET_SINCE                : u32 : 1;

zxdg_surface_v6_interface: wl_interface;
zxdg_surface_v6 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zxdg_surface_v6_interface;

    /* ENUM: zxdg_surface_v6::error */
    error_not_constructed     : u32 : 1;
    error_already_constructed : u32 : 2;
    error_unconfigured_buffer : u32 : 3;

    set_user_data :: inline (self: *zxdg_surface_v6, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zxdg_surface_v6) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zxdg_surface_v6) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zxdg_surface_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_SURFACE_V6_DESTROY);
        wl_proxy_destroy(self);
    }

    get_toplevel :: inline (self: *zxdg_surface_v6) -> *zxdg_toplevel_v6 #c_call {
        ret: *wl_proxy = wl_proxy_marshal_constructor_versioned(
            self, ZXDG_SURFACE_V6_GET_TOPLEVEL,
            *zxdg_toplevel_v6_interface, wl_proxy_get_version(self),
            null);
        return cast(*zxdg_toplevel_v6) ret;
    }

    get_popup :: inline (self: *zxdg_surface_v6, parent: *zxdg_surface_v6, positioner: *zxdg_positioner_v6) -> *zxdg_popup_v6 #c_call {
        ret: *wl_proxy = wl_proxy_marshal_constructor_versioned(
            self, ZXDG_SURFACE_V6_GET_POPUP,
            *zxdg_popup_v6_interface, wl_proxy_get_version(self),
            null, parent, positioner);
        return cast(*zxdg_popup_v6) ret;
    }

    set_window_geometry :: inline (self: *zxdg_surface_v6, x: s32, y: s32, width: s32, height: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_SURFACE_V6_SET_WINDOW_GEOMETRY,
            x, y, width, height);
    }

    ack_configure :: inline (self: *zxdg_surface_v6, serial: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_SURFACE_V6_ACK_CONFIGURE,
            serial);
    }

    add_listener :: inline (self: *zxdg_surface_v6, listener: *zxdg_surface_v6_listener, data: *void) -> s32 #c_call {
        return wl_proxy_add_listener(self, cast(*generic_c_call) listener, data);
    }
}

ZXDG_SURFACE_V6_DESTROY                   : u32 : 0;
ZXDG_SURFACE_V6_GET_TOPLEVEL              : u32 : 1;
ZXDG_SURFACE_V6_GET_POPUP                 : u32 : 2;
ZXDG_SURFACE_V6_SET_WINDOW_GEOMETRY       : u32 : 3;
ZXDG_SURFACE_V6_ACK_CONFIGURE             : u32 : 4;
ZXDG_SURFACE_V6_DESTROY_SINCE             : u32 : 1;
ZXDG_SURFACE_V6_GET_TOPLEVEL_SINCE        : u32 : 1;
ZXDG_SURFACE_V6_GET_POPUP_SINCE           : u32 : 1;
ZXDG_SURFACE_V6_SET_WINDOW_GEOMETRY_SINCE : u32 : 1;
ZXDG_SURFACE_V6_ACK_CONFIGURE_SINCE       : u32 : 1;
ZXDG_SURFACE_V6_CONFIGURE_SINCE           : u32 : 1;

zxdg_surface_v6_listener :: struct {
    configure := _stubs_.configure;

    _stubs_ :: struct {
        configure :: (data: *void,
            self: *zxdg_surface_v6,
            serial: u32) -> void #c_call {}
    }
}

zxdg_toplevel_v6_interface: wl_interface;
zxdg_toplevel_v6 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zxdg_toplevel_v6_interface;

    /* ENUM: zxdg_toplevel_v6::resize_edge */
    resize_edge_none         : u32 : 0;
    resize_edge_top          : u32 : 1;
    resize_edge_bottom       : u32 : 2;
    resize_edge_left         : u32 : 4;
    resize_edge_top_left     : u32 : 5;
    resize_edge_bottom_left  : u32 : 6;
    resize_edge_right        : u32 : 8;
    resize_edge_top_right    : u32 : 9;
    resize_edge_bottom_right : u32 : 10;

    /* ENUM: zxdg_toplevel_v6::state */
    state_maximized  : u32 : 1;
    state_fullscreen : u32 : 2;
    state_resizing   : u32 : 3;
    state_activated  : u32 : 4;

    set_user_data :: inline (self: *zxdg_toplevel_v6, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zxdg_toplevel_v6) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zxdg_toplevel_v6) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zxdg_toplevel_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_DESTROY);
        wl_proxy_destroy(self);
    }

    set_parent :: inline (self: *zxdg_toplevel_v6, parent: *zxdg_toplevel_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_PARENT,
            parent);
    }

    set_title :: inline (self: *zxdg_toplevel_v6, title: *u8) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_TITLE,
            title);
    }

    set_app_id :: inline (self: *zxdg_toplevel_v6, app_id: *u8) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_APP_ID,
            app_id);
    }

    show_window_menu :: inline (self: *zxdg_toplevel_v6, seat: *wl_seat, serial: u32, x: s32, y: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SHOW_WINDOW_MENU,
            seat, serial, x, y);
    }

    move :: inline (self: *zxdg_toplevel_v6, seat: *wl_seat, serial: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_MOVE,
            seat, serial);
    }

    resize :: inline (self: *zxdg_toplevel_v6, seat: *wl_seat, serial: u32, edges: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_RESIZE,
            seat, serial, edges);
    }

    set_max_size :: inline (self: *zxdg_toplevel_v6, width: s32, height: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_MAX_SIZE,
            width, height);
    }

    set_min_size :: inline (self: *zxdg_toplevel_v6, width: s32, height: s32) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_MIN_SIZE,
            width, height);
    }

    set_maximized :: inline (self: *zxdg_toplevel_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_MAXIMIZED);
    }

    unset_maximized :: inline (self: *zxdg_toplevel_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_UNSET_MAXIMIZED);
    }

    set_fullscreen :: inline (self: *zxdg_toplevel_v6, output: *wl_output) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_FULLSCREEN,
            output);
    }

    unset_fullscreen :: inline (self: *zxdg_toplevel_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_UNSET_FULLSCREEN);
    }

    set_minimized :: inline (self: *zxdg_toplevel_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_TOPLEVEL_V6_SET_MINIMIZED);
    }

    add_listener :: inline (self: *zxdg_toplevel_v6, listener: *zxdg_toplevel_v6_listener, data: *void) -> s32 #c_call {
        return wl_proxy_add_listener(self, cast(*generic_c_call) listener, data);
    }
}

ZXDG_TOPLEVEL_V6_DESTROY                : u32 : 0;
ZXDG_TOPLEVEL_V6_SET_PARENT             : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_TITLE              : u32 : 2;
ZXDG_TOPLEVEL_V6_SET_APP_ID             : u32 : 3;
ZXDG_TOPLEVEL_V6_SHOW_WINDOW_MENU       : u32 : 4;
ZXDG_TOPLEVEL_V6_MOVE                   : u32 : 5;
ZXDG_TOPLEVEL_V6_RESIZE                 : u32 : 6;
ZXDG_TOPLEVEL_V6_SET_MAX_SIZE           : u32 : 7;
ZXDG_TOPLEVEL_V6_SET_MIN_SIZE           : u32 : 8;
ZXDG_TOPLEVEL_V6_SET_MAXIMIZED          : u32 : 9;
ZXDG_TOPLEVEL_V6_UNSET_MAXIMIZED        : u32 : 10;
ZXDG_TOPLEVEL_V6_SET_FULLSCREEN         : u32 : 11;
ZXDG_TOPLEVEL_V6_UNSET_FULLSCREEN       : u32 : 12;
ZXDG_TOPLEVEL_V6_SET_MINIMIZED          : u32 : 13;
ZXDG_TOPLEVEL_V6_DESTROY_SINCE          : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_PARENT_SINCE       : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_TITLE_SINCE        : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_APP_ID_SINCE       : u32 : 1;
ZXDG_TOPLEVEL_V6_SHOW_WINDOW_MENU_SINCE : u32 : 1;
ZXDG_TOPLEVEL_V6_MOVE_SINCE             : u32 : 1;
ZXDG_TOPLEVEL_V6_RESIZE_SINCE           : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_MAX_SIZE_SINCE     : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_MIN_SIZE_SINCE     : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_MAXIMIZED_SINCE    : u32 : 1;
ZXDG_TOPLEVEL_V6_UNSET_MAXIMIZED_SINCE  : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_FULLSCREEN_SINCE   : u32 : 1;
ZXDG_TOPLEVEL_V6_UNSET_FULLSCREEN_SINCE : u32 : 1;
ZXDG_TOPLEVEL_V6_SET_MINIMIZED_SINCE    : u32 : 1;
ZXDG_TOPLEVEL_V6_CONFIGURE_SINCE        : u32 : 1;
ZXDG_TOPLEVEL_V6_CLOSE_SINCE            : u32 : 1;

zxdg_toplevel_v6_listener :: struct {
    configure := _stubs_.configure;
    close     := _stubs_.close;

    _stubs_ :: struct {
        configure :: (data: *void,
            self: *zxdg_toplevel_v6,
            width: s32,
            height: s32,
            states: *wl_array) -> void #c_call {}
        close :: (data: *void,
            self: *zxdg_toplevel_v6) -> void #c_call {}
    }
}

zxdg_popup_v6_interface: wl_interface;
zxdg_popup_v6 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zxdg_popup_v6_interface;

    /* ENUM: zxdg_popup_v6::error */
    error_invalid_grab : u32 : 0;

    set_user_data :: inline (self: *zxdg_popup_v6, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zxdg_popup_v6) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zxdg_popup_v6) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zxdg_popup_v6) #c_call {
        wl_proxy_marshal(self, ZXDG_POPUP_V6_DESTROY);
        wl_proxy_destroy(self);
    }

    grab :: inline (self: *zxdg_popup_v6, seat: *wl_seat, serial: u32) #c_call {
        wl_proxy_marshal(self, ZXDG_POPUP_V6_GRAB,
            seat, serial);
    }

    add_listener :: inline (self: *zxdg_popup_v6, listener: *zxdg_popup_v6_listener, data: *void) -> s32 #c_call {
        return wl_proxy_add_listener(self, cast(*generic_c_call) listener, data);
    }
}

ZXDG_POPUP_V6_DESTROY          : u32 : 0;
ZXDG_POPUP_V6_GRAB             : u32 : 1;
ZXDG_POPUP_V6_DESTROY_SINCE    : u32 : 1;
ZXDG_POPUP_V6_GRAB_SINCE       : u32 : 1;
ZXDG_POPUP_V6_CONFIGURE_SINCE  : u32 : 1;
ZXDG_POPUP_V6_POPUP_DONE_SINCE : u32 : 1;

zxdg_popup_v6_listener :: struct {
    configure  := _stubs_.configure;
    popup_done := _stubs_.popup_done;

    _stubs_ :: struct {
        configure :: (data: *void,
            self: *zxdg_popup_v6,
            x: s32,
            y: s32,
            width: s32,
            height: s32) -> void #c_call {}
        popup_done :: (data: *void,
            self: *zxdg_popup_v6) -> void #c_call {}
    }
}


#scope_module
xdg_shell_unstable_v6_protocol_init :: () {
    xdg_shell_unstable_v6_types_storage = .[
        /* __DUMMY__ */
        null,  // 0
        /* REQUEST: zxdg_shell_v6::create_positioner */
        *zxdg_positioner_v6_interface,   // 1
        /* REQUEST: zxdg_shell_v6::get_xdg_surface */
        *zxdg_surface_v6_interface,   // 2
        *wl_surface_interface,   // 3
        /* REQUEST: zxdg_shell_v6::pong */
        null,  // 4
        /* EVENT: zxdg_shell_v6::ping */
        null,  // 5
        /* REQUEST: zxdg_positioner_v6::set_size */
        null,  // 6
        null,  // 7
        /* REQUEST: zxdg_positioner_v6::set_anchor_rect */
        null,  // 8
        null,  // 9
        null,  // 10
        null,  // 11
        /* REQUEST: zxdg_positioner_v6::set_anchor */
        null,  // 12
        /* REQUEST: zxdg_positioner_v6::set_gravity */
        null,  // 13
        /* REQUEST: zxdg_positioner_v6::set_constraint_adjustment */
        null,  // 14
        /* REQUEST: zxdg_positioner_v6::set_offset */
        null,  // 15
        null,  // 16
        /* REQUEST: zxdg_surface_v6::get_toplevel */
        *zxdg_toplevel_v6_interface,   // 17
        /* REQUEST: zxdg_surface_v6::get_popup */
        *zxdg_popup_v6_interface,   // 18
        *zxdg_surface_v6_interface,   // 19
        *zxdg_positioner_v6_interface,   // 20
        /* REQUEST: zxdg_surface_v6::set_window_geometry */
        null,  // 21
        null,  // 22
        null,  // 23
        null,  // 24
        /* REQUEST: zxdg_surface_v6::ack_configure */
        null,  // 25
        /* EVENT: zxdg_surface_v6::configure */
        null,  // 26
        /* REQUEST: zxdg_toplevel_v6::set_parent */
        *zxdg_toplevel_v6_interface,   // 27
        /* REQUEST: zxdg_toplevel_v6::set_title */
        null,  // 28
        /* REQUEST: zxdg_toplevel_v6::set_app_id */
        null,  // 29
        /* REQUEST: zxdg_toplevel_v6::show_window_menu */
        *wl_seat_interface,   // 30
        null,  // 31
        null,  // 32
        null,  // 33
        /* REQUEST: zxdg_toplevel_v6::move */
        *wl_seat_interface,   // 34
        null,  // 35
        /* REQUEST: zxdg_toplevel_v6::resize */
        *wl_seat_interface,   // 36
        null,  // 37
        null,  // 38
        /* REQUEST: zxdg_toplevel_v6::set_max_size */
        null,  // 39
        null,  // 40
        /* REQUEST: zxdg_toplevel_v6::set_min_size */
        null,  // 41
        null,  // 42
        /* REQUEST: zxdg_toplevel_v6::set_fullscreen */
        *wl_output_interface,   // 43
        /* EVENT: zxdg_toplevel_v6::configure */
        null,  // 44
        null,  // 45
        null,  // 46
        /* REQUEST: zxdg_popup_v6::grab */
        *wl_seat_interface,   // 47
        null,  // 48
        /* EVENT: zxdg_popup_v6::configure */
        null,  // 49
        null,  // 50
        null,  // 51
        null,  // 52
    ];

    zxdg_shell_v6_requests[0] = .{"destroy", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_shell_v6_requests[1] = .{"create_positioner", "n", xdg_shell_unstable_v6_types_storage.data + 1};
    zxdg_shell_v6_requests[2] = .{"get_xdg_surface", "no", xdg_shell_unstable_v6_types_storage.data + 2};
    zxdg_shell_v6_requests[3] = .{"pong", "u", xdg_shell_unstable_v6_types_storage.data + 4};
    zxdg_shell_v6_events[0] = .{"ping", "u", xdg_shell_unstable_v6_types_storage.data + 5};
    zxdg_shell_v6_interface = .{
        "zxdg_shell_v6", 1,
        zxdg_shell_v6_requests.count, zxdg_shell_v6_requests.data,
        zxdg_shell_v6_events.count, zxdg_shell_v6_events.data,
    };

    zxdg_positioner_v6_requests[0] = .{"destroy", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_positioner_v6_requests[1] = .{"set_size", "ii", xdg_shell_unstable_v6_types_storage.data + 6};
    zxdg_positioner_v6_requests[2] = .{"set_anchor_rect", "iiii", xdg_shell_unstable_v6_types_storage.data + 8};
    zxdg_positioner_v6_requests[3] = .{"set_anchor", "u", xdg_shell_unstable_v6_types_storage.data + 12};
    zxdg_positioner_v6_requests[4] = .{"set_gravity", "u", xdg_shell_unstable_v6_types_storage.data + 13};
    zxdg_positioner_v6_requests[5] = .{"set_constraint_adjustment", "u", xdg_shell_unstable_v6_types_storage.data + 14};
    zxdg_positioner_v6_requests[6] = .{"set_offset", "ii", xdg_shell_unstable_v6_types_storage.data + 15};
    zxdg_positioner_v6_interface = .{
        "zxdg_positioner_v6", 1,
        zxdg_positioner_v6_requests.count, zxdg_positioner_v6_requests.data,
        0, null,
    };

    zxdg_surface_v6_requests[0] = .{"destroy", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_surface_v6_requests[1] = .{"get_toplevel", "n", xdg_shell_unstable_v6_types_storage.data + 17};
    zxdg_surface_v6_requests[2] = .{"get_popup", "noo", xdg_shell_unstable_v6_types_storage.data + 18};
    zxdg_surface_v6_requests[3] = .{"set_window_geometry", "iiii", xdg_shell_unstable_v6_types_storage.data + 21};
    zxdg_surface_v6_requests[4] = .{"ack_configure", "u", xdg_shell_unstable_v6_types_storage.data + 25};
    zxdg_surface_v6_events[0] = .{"configure", "u", xdg_shell_unstable_v6_types_storage.data + 26};
    zxdg_surface_v6_interface = .{
        "zxdg_surface_v6", 1,
        zxdg_surface_v6_requests.count, zxdg_surface_v6_requests.data,
        zxdg_surface_v6_events.count, zxdg_surface_v6_events.data,
    };

    zxdg_toplevel_v6_requests[0] = .{"destroy", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_toplevel_v6_requests[1] = .{"set_parent", "?o", xdg_shell_unstable_v6_types_storage.data + 27};
    zxdg_toplevel_v6_requests[2] = .{"set_title", "s", xdg_shell_unstable_v6_types_storage.data + 28};
    zxdg_toplevel_v6_requests[3] = .{"set_app_id", "s", xdg_shell_unstable_v6_types_storage.data + 29};
    zxdg_toplevel_v6_requests[4] = .{"show_window_menu", "ouii", xdg_shell_unstable_v6_types_storage.data + 30};
    zxdg_toplevel_v6_requests[5] = .{"move", "ou", xdg_shell_unstable_v6_types_storage.data + 34};
    zxdg_toplevel_v6_requests[6] = .{"resize", "ouu", xdg_shell_unstable_v6_types_storage.data + 36};
    zxdg_toplevel_v6_requests[7] = .{"set_max_size", "ii", xdg_shell_unstable_v6_types_storage.data + 39};
    zxdg_toplevel_v6_requests[8] = .{"set_min_size", "ii", xdg_shell_unstable_v6_types_storage.data + 41};
    zxdg_toplevel_v6_requests[9] = .{"set_maximized", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_toplevel_v6_requests[10] = .{"unset_maximized", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_toplevel_v6_requests[11] = .{"set_fullscreen", "?o", xdg_shell_unstable_v6_types_storage.data + 43};
    zxdg_toplevel_v6_requests[12] = .{"unset_fullscreen", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_toplevel_v6_requests[13] = .{"set_minimized", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_toplevel_v6_events[0] = .{"configure", "iia", xdg_shell_unstable_v6_types_storage.data + 44};
    zxdg_toplevel_v6_events[1] = .{"close", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_toplevel_v6_interface = .{
        "zxdg_toplevel_v6", 1,
        zxdg_toplevel_v6_requests.count, zxdg_toplevel_v6_requests.data,
        zxdg_toplevel_v6_events.count, zxdg_toplevel_v6_events.data,
    };

    zxdg_popup_v6_requests[0] = .{"destroy", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_popup_v6_requests[1] = .{"grab", "ou", xdg_shell_unstable_v6_types_storage.data + 47};
    zxdg_popup_v6_events[0] = .{"configure", "iiii", xdg_shell_unstable_v6_types_storage.data + 49};
    zxdg_popup_v6_events[1] = .{"popup_done", "", xdg_shell_unstable_v6_types_storage.data + 0};
    zxdg_popup_v6_interface = .{
        "zxdg_popup_v6", 1,
        zxdg_popup_v6_requests.count, zxdg_popup_v6_requests.data,
        zxdg_popup_v6_events.count, zxdg_popup_v6_events.data,
    };
}


#scope_file
xdg_shell_unstable_v6_types_storage: []*wl_interface;

zxdg_shell_v6_requests: [4]wl_message;
zxdg_shell_v6_events  : [1]wl_message;

zxdg_positioner_v6_requests: [7]wl_message;

zxdg_surface_v6_requests: [5]wl_message;
zxdg_surface_v6_events  : [1]wl_message;

zxdg_toplevel_v6_requests: [14]wl_message;
zxdg_toplevel_v6_events  : [2]wl_message;

zxdg_popup_v6_requests: [2]wl_message;
zxdg_popup_v6_events  : [2]wl_message;

#assert size_of(zxdg_shell_v6) == 0 "wayland-scanner bug: zxdg_shell_v6 is non-empty";
#assert size_of(zxdg_positioner_v6) == 0 "wayland-scanner bug: zxdg_positioner_v6 is non-empty";
#assert size_of(zxdg_surface_v6) == 0 "wayland-scanner bug: zxdg_surface_v6 is non-empty";
#assert size_of(zxdg_toplevel_v6) == 0 "wayland-scanner bug: zxdg_toplevel_v6 is non-empty";
#assert size_of(zxdg_popup_v6) == 0 "wayland-scanner bug: zxdg_popup_v6 is non-empty";
