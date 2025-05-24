
var stack_bottomright = { "dir1": "up", "dir2": "left", "firstpos1": 15, "firstpos2": 15 };
function show_stack_bottomright(err, Titulo, Contenido) {

        var opts = {
            pnotify_title: Titulo,
            pnotify_text: Contenido,
            pnotify_addclass: "stack-bottomright",
            pnotify_stack: stack_bottomright
        };
    
        if (err) {
            opts.pnotify_title = Titulo;
            opts.pnotify_text = Contenido;
            opts.pnotify_type = "error";
        }
        $.pnotify(opts);
};

