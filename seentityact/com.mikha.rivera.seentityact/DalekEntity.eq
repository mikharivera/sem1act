
/*
 * TardisEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class DalekEntity : SEEntity
{
	SESprite dalek;
	SESprite text;
	int height;
	int width;
	int dalek_x;
	int dalek_y;
	int tardis_x;
	int tardis_y;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		height = get_scene_height();
		width = get_scene_width();
	
		rsc.prepare_image("adalek","dalek", 0.1*width);
		
		dalek = add_sprite_for_image(SEImage.for_resource("adalek"));
		
		dalek.move(Math.random(0,width), Math.random(0,height));

		rsc.prepare_font("myfont", "arial bold  color=white", 70);
		text = add_sprite_for_text(" ","myfont");
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now,delta);

		tardis_x = MainScene.xCoor;
		tardis_y = MainScene.yCoor;
		dalek_x = dalek.get_x();
		dalek_y = dalek.get_y();
		
		dalek.move(dalek_x+(tardis_x-dalek_x)/20, dalek_y+(tardis_y-dalek_y)/20);
		
		if((dalek_x/tardis_x)==1 && (dalek_y/tardis_y)==1)
		{
			text.set_text("Game Over!");
			text.move(0.35*width,0.45*height);	
		}
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
