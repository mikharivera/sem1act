
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

class Main : LayerWidget, EventReceiver
{
	public void initialize() 
	{
		base.initialize();
		set_size_request_override(px("50mm"),px("70mm"));
		add(CanvasWidget.for_colors(Color.instance("blue"), Color.instance("black")));
		//add(LabelWidget.for_string("Mikhaella Rivera").set_font(Theme.font().modify("color=black outline-color=green 5mm italic"), Font.instance));
		add(ButtonWidget.for_string("Hello!").set_event("button_click_event"));
	}

	public void on_event(Object o)
		{
			if("button_click_event".equals(o))
			{
				add(LabelWidget.for_string("Mikhaella Rivera").set_font
				(Theme.font().modify("color=black outline-color=green 5mm italic")));
			}
		}		
}