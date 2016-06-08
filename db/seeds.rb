require_relative '../models/character'

Character.destroy_all
Character.create([
  {
  	name: "Buffy Summers", image_url: "http://images.onset.freedom.com/ocregister/nq7dgv-b88439307z.120150619104623000g4oae2cj.10.jpg", description: "Buffy Summers is the main protagonist of Buffy the Vampire Slayer. The series depicts her life and adventures as she grows up after she learns that she is the Slayer - a Chosen One gifted with the strength and skills to fight vampires, demons, and the forces of darkness. Buffy's character was created to subvert the stereotypical female horror film victim. and she remains one of the most beloved television characters.", seasons: "", character_type: "human"
  	},
  	{
  	name: "Angel", image_url: "http://static.comicvine.com/uploads/original/0/3564/689849-angel1.jpg", description: "Angel is introduced as a love interest for Buffy, however, their relationship is complicated by the fact that Angel is a vampire. In the character's backstory, Angel, originally known as Liam, was an 18th-century Irishman who after becoming a vampire and assuming the name Angelus became famous as the most sadistic vampire in European history. After angering a gypsy clan, he was cursed with his human soul, leading to great personal torment and the decision to resist the evil impulses that come with being a vampire. He later assumes the shortened name Angel, and over the course of the series he matures into an altruistic champion of mankind.", character_type: "vampire"
  	},
  	{
  	name: "Xander Harris", image_url: "http://vignette2.wikia.nocookie.net/buffy/images/3/31/Xanderharris.jpg/revision/latest?cb=20150120145751", description: "Xander is one of several friends of Buffy who assist her in saving the world against numerous supernatural events that plague Sunnydale. Xander is often the most geeky as well as witty and verbose of Buffy's friends. His overriding arc through the series is his struggle towards maturity and earning the respect of others. Storylines often focus on Xander's working class home life and his fears of inadequacy, however, his unique position as both outside of and within the main group enhances his insight into the other characters. In Season Eight, he is Buffy's unofficial Watcher, and as such, his character is noted for being the one who observes and sees everything rightly.", character_type: "human"
  	},
  	{
  	name: "Willow Rosenberg", image_url: "http://ia.media-imdb.com/images/M/MV5BMjEzMTM0Njg1Ml5BMl5BanBnXkFtZTYwMDM4NjEz._V1_SX640_SY720_.jpg", description: "Willow plays an integral role within the Scooby Gang that support Buffy defeat vampires, demons, and other evil in the Sunnydale. Willow begins the series as a shy, nerdy girl with little confidence. She has inherent magical abilities and begins to study witchcraft. As the series progresses, Willow becomes more sure of herself and her magical powers become significant. Her dependence on magic becomes so consuming, however, they push her to become the sixth season's main villain, threatening to destroy the world in a fit of grief and rage. Of the core characters, Willow changes the most, becoming a complex portrayal of a woman whose powers force her to seek balance between what is best for the people she loves and what she is capable of doing. Her relationship with fellow witch, Tara Maclay, was one of the first lesbian couples on U.S. television and one of the most positive relationships of the series.", character_type: "human"
  	},
  	{
  	name: "Rupert Giles", image_url: "http://vignette2.wikia.nocookie.net/buffy/images/a/a3/Rupert_Giles.jpg/revision/latest?cb=20150118062913", description: "Rupert Giles, affectionately called Giles by Buffy and her friends is a mentor and Watcher to Buffy in her capacity as vampire Slayer. He is in the employ of the Watchers' Council, a British organization that attempts to oversee the actions of the Slayer. His loyalty to Buffy and her group of friends costs him his job for a time, and his role increasingly becomes one of a father figure to Buffy. His encyclopedic knowledge, affinity for magic, moderate fighting skills and willingness to kill make him an asset to Buffy in her fight against the supernatural evils that plague Sunnydale, California.", seasons: "", character_type: "human"
  	},
  	{
  	name: "Spike", image_url: "http://digitalspyuk.cdnds.net/14/27/1280x1291/gallery_ustv-buffy-the-vampire-slayer-spike.jpg", description: "As a human named William, Spike was an unsuccessful aspiring poet in the Victorian era. He was sired by the vampire Drusilla and acquired the nickname Spike for his preferred method of torturing people with railroad spikes. He was notorious for killing two vampire Slayers; one at the end of the 1800s during the Boxer Rebellion, the other in 1970s New York. During the second season of the series, Spike comes to Sunnydale hoping to kill a third Slayer, Buffy Summers, with whom he later forges an uneasy alliance and eventual romatic relationship. He dies a hero in the show's series finale.", character_type: "vampire"
  	},
])