/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Gabriel Cabrera <gabrielcabrera@utexas.edu>
*/
public class PowerApp : Gtk.Application {
    public PowerApp() {
        Object(application_id:"com.github.gabrielangelcabrera.power_app", flags: ApplicationFlags.FLAGS_NONE);
    }
    protected override void activate() {
        var main_window = new Gtk.ApplicationWindow(this) {
            default_height = 300, default_width = 300, title = "Power App"
        };
        var label = new Gtk.Label("Power App");
        main_window.add(label);
        main_window.show_all();
    }
    public static int main(string[] args) {
        return new PowerApp().run(args);
    }
}