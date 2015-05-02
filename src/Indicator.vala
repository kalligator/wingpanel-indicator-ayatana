/*-
 * Copyright (c) 2015 Wingpanel Developers (http://launchpad.net/wingpanel)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Library General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


public class AyanataCompatibility.MetaIndicator : Wingpanel.Indicator {

	private IndicatorFactory indicator_loader;

	public MetaIndicator () {
		Object (code_name: "ayanata_compatibility",
				display_name: _("Ayanata Compatibility"),
				description:_("Ayanata Compatibility Meta Indicator"));

		var black = new string[] {};
		indicator_loader = new IndicatorFactory (black);
		visible = false;
		var indicators = indicator_loader.get_indicators ();

		foreach (var indicator in indicators)
		    load_indicator (indicator);
	}

	public override Gtk.Widget get_display_widget () {
		return new Gtk.Label ("should not be shown");
	}

	private void load_indicator (IndicatorIface indicator) {
	    var entries = indicator.get_entries ();

	    foreach (var entry in entries)
	        create_entry (entry);

	    indicator.entry_added.connect (create_entry);
	    indicator.entry_removed.connect (delete_entry);
	}

	private void create_entry (Indicator indicator) {
	    Wingpanel.IndicatorManager.get_default ().register_indicator (indicator);
	}

	private void delete_entry (Indicator indicator) {
		Wingpanel.IndicatorManager.get_default ().deregister_indicator (indicator);		
	}

	public override Gtk.Widget get_widget () {
		return new Gtk.Label ("should not be shown");
	}

	public override void opened () {
	}

	public override void closed () {
	}

}

public Wingpanel.Indicator get_indicator (Module module) {
	debug ("Activating AyanataCompatibility Meta Indicator");
	var indicator = new AyanataCompatibility.MetaIndicator ();
	return indicator;
}
