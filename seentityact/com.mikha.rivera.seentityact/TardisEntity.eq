
/*
 * TardisEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class TardisEntity : SEEntity
{
	SESprite tardis;
	int height;
	int width;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		height = get_scene_height();
		width = get_scene_width();
		
		rsc.prepare_image("thetardis","tardis", 0.1*width);
		
		tardis = add_sprite_for_image(SEImage.for_resource("thetardis"));
		
		tardis.move(0.5*width, 0.5*height);
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now,delta);
		tardis.move(MainScene.xCoor,MainScene.yCoor);
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
