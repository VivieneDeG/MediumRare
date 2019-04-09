# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ApplicationRecord.transaction do

  User.destroy_all
  Post.destroy_all

  # Users
  User.create!(name: "Guest User", email: "guest@demo.com", password: "watpassword")
  User.create!(name: "Rachel Roth", email: "raven@azarath.io", password: "nevermore")
  User.create!(name: "Lissa Dragomir", email: "spirit@vacademy.edu", password: "element")
  User.create!(name: "Draco Malfoy", email: "ferret@slytherin.io", password: "myfatherwillhearaboutthis")
  User.create!(name: "Zoey Redbird", email: "nyx_night@hon.edu", password: "chosen")
  User.create!(name: "Viviene De G", email: "creator@mediumrare.com", password: "mediumrare")
  User.create!(name: "Edward Elric", email: "fullmetal@alchemist.org", password: "alchemy")
  User.create!(name: "Robert Langdon", email: "mystery@history.org", password: "professor")

  # Posts
  # https://medium.com/@sethbannon/i-just-ate-meat-for-the-first-time-in-20-years-214d0f875568
  Post.create!(title: "I Just Ate Meat For The First Time In 20 Years",
    body: "Yesterday I ate meat for the first time in 20 years and I couldn't be happier. Let me explain why.

    Humans have a long history with meat. Nearly 10,000 years ago, homo sapiens began domesticating animals for meat, milk, and hides. While the scale and sophistication of the effort has grown greatly since our ancestors in Mesopotamia began domesticating goats, the basic formula hasn't changed all that much. We selectively breed animals with traits we want, feed them for months to years, and then slaughter them to make beef, pork, chicken, turkey, gelatin, and leather, sometimes after extracting their breastmilk for a time. Functionally, we're using animals as technology to turn plant inputs into outputs that we like to eat, drink, or wear.

    The problem is that meat produced through animal agriculture is terrible for the environment (contributing more to greenhouse emissions than all cars, trucks, and planes combined) and raises serious animal welfare concerns. It's why I decided to stop eating it when I was 12 and never took it back up — not because I don't like the taste of meat (I do!) but because of the extremely problematic way meat is made.

    This is all about to change.

    In the past couple years, a new crop of startups has fundamentally reimagined how we make food. Instead of domesticating animals, these startups are domesticating cells directly. Instead of animal farms, they have cell farms.

    Take beef as an example. For the purpose of meat production, a cow can be thought of as a biological machine, inside which certain processes happen that produce something we like to eat. Specifically, muscle cells and fat cells are dividing and multiplying inside the cow's body, producing tissue that, after slaughter, is turned into beef.

    What if we could bring about that same process of cell division, but outside of the cow? That's exactly what Silicon Valley based Memphis Meats is working on. Their technology allows them to produce real beef, without the need to raise and slaughter a cow, by allowing cells to multiply in bioreactors.

    This isn't science fiction. This isn't years away. Memphis Meats is making their clean meat today. And as of yesterday, I can report that it is delicious.

    Due to being an early investor through my fund Fifty Years, I was lucky to be invited to a tasting event held in San Francisco, in the same kitchen frequently used by Julia Child. They cooked up a two course meal of Southern Fried Chicken and Duck à l'orange using their clean meat.

    For the first time ever, with the Wall Street Journal looking on, they cooked up and showed off real chicken pieces (not ground meat!) and real duck. Though the taste and texture was identical to conventional meat, their clean meat wasn't harvested from the carcasses of slaughtered animals.

    With studies showing clean meat could potentially be produced with 96% less greenhouse gas emissions, 45% less energy, 99% less land use, and 96% less water use than meat made through animal agriculture, there's a lot to be excited about.

    So, after 20 years of not eating meat, yesterday I ate fried chicken and roast duck and couldn't be happier.

    \"We shall escape the absurdity of growing a whole chicken in order to eat the breast or wing, by growing these parts separately under a suitable medium.\"
    — Winston Churchill, Fifty Years Hence (1931)
    
    (Original article from Seth Bannon on Medium)",
    author_id: 5)

  # https://medium.com/s/the-nuance/are-mushrooms-really-a-miracle-food-56b7700bd9b1
  Post.create!(title: "Are Mushrooms Really a Miracle Food?", 
    body: "The mushroom business is booming. Worldwide production is up 30-fold since the late 1970s, and the average person now eats about 11 pounds of mushrooms per year, according to a 2017 analysis of the global mushroom industry.

    One of the factors driving this mushroom mania is the belief that they possess unusual and profound health attributes. A 2018 report from the Royal Botanic Gardens points out that mushrooms and other fungi have been used as medicine for nearly 6,000 years. Whole Foods even named \"medicinal mushrooms\" as one of its top food trends for 2018. In particular, many exotic and esoteric types like reishi and chaga mushrooms are now turning up in powders, pills, and other health supplements.

    All this hype is not unfounded. \"Mushrooms are fungus, and some famous medicinal items—including penicillin and statin drugs—were derived from fungus,\" says Dr. Mark Moyad, the Jenkins/Pomkempner Director of Preventive and Alternative Medicine at the University of Michigan Medical Center. He says it's reasonable to think that one of the very few fungi humans eat could provide some benefits not associated with the consumption of fruits, vegetables, or other types of foods. Based on what we already know about mushrooms, he calls them \"a winner for almost all people and all diets.\"

    For starters, all mushrooms—even standard white ones—are low in calories and contain healthy nutrients like potassium, selenium, and vitamin B12, Moyad says. Mushrooms are also among the very few natural and vegan sources of dietary vitamin D, he says, and they contain a type of soluble fiber called beta glucan, which seems to have heart and cholesterol benefits.

    But the research really gets interesting when it comes to mushrooms' antioxidant compounds.

    Mushrooms contain glutathione, an antioxidant molecule found in almost every cell in your body. It seems to have important signaling and detoxifying properties, says John Richie, a mushroom researcher and professor of public health sciences at Penn State University. \"[Glutathione] is one of the most important small molecules in living things, and it plays a role in turning on or turning off the cell's protective systems,\" Richie says.

    While antioxidants get a lot of hype, he says they're often misunderstood. \"One of the problems is that, once they do their job, antioxidants can become pro-oxidants, which is a problem,\" he says. He highlights an infamous study, conducted in the 1990s, that found tobacco users who took supplements loaded with the antioxidant beta-carotene experienced increased rates of cancer, rather than the decreased rates the study's leaders had anticipated. \"The simple idea that antioxidants will solve all your problems is very naïve,\" he says.

    But when it comes to glutathione, he says, \"We have this whole system of enzymes that is designed to take care of glutathione and supplement its activity. It stands out from other antioxidants from the standpoint that it's one we evolved to use in our cells.\"

    Along with glutathione, mushrooms contain a second antioxidant called ergothioneine, which Richie says is much less abundant in other foods. But while ergothioneine is rare, it turns out that the human body contains a specific transport protein for it. \"This suggests it's got to be important for human health,\" he says. Important how? Richie says there's preliminary evidence that ergothioneine could block the kind of oxidative damage that contributes to cancer and neurodegenerative diseases like Alzheimer's. There are also studies linking the consumption of ergothioneine to a longer, healthier life.

    \"Mushrooms are highly unusual in that they're a producer of both glutathione and ergothioneine,\" Richie adds. This, combined with mushrooms' other salubrious properties and millennia-old associations with health and medicine, gives him and other researchers reason to believe these fungi really could possess some \"superfood\" properties.

    When it comes to hyped specialty mushrooms—such as reishi or chaga—there's some evidence of additional health perks. One 2011 review linked reishi mushrooms (or extracts containing their compounds) to better blood sugar regulation, protection against liver and gut disease, and \"anticancer effects.\" Some of these same benefits have turned up in research on chaga mushrooms. But the authors of that 2011 review point out that nearly all the evidence to date comes from animal or lab models—not from studies on humans.

    Moyad reiterates these concerns. He also says that some varieties of mushroom—including reishi mushrooms—have effects on blood clotting that may make them risky for people taking warfarin or other blood pressure meds. Reishi mushroom supplements may also present some risks for those undergoing chemotherapy or taking immunosuppressant drugs, according to a report from Memorial Sloan Kettering Cancer Center.

    Especially when it comes to mushroom supplements, \"we need more studies that are independently funded\"—meaning not paid for by companies trying to sell mushroom-derived products—\"and larger in size and longer in duration, and that incorporate some kind of placebo control,\" Moyad says. The long-term effects of using these products aren't known.

    Moyad says adding more whole mushrooms to your diet is a safe way to get their potential health benefits while avoiding the risks that come from taking pills or powders.

    How much should you be eating? \"I recommend that everyone consume about three milligrams a day of ergothioneine from mushrooms,\" says Robert Beelman, professor emeritus of food science at Penn State and a frequent collaborator of Richie's. According to a 2019 review Beelman and Richie co-authored, swallowing a hearty 3.5-ounce portion of button mushrooms every day—or just an ounce of specialty mushrooms like shitake, oyster, or maitake mushrooms—will provide those three milligrams. And no, you don't have to eat them raw. \"Cooking does not destroy the ergothioneine at all and might actually make it more bio-available,\" Beelman says.

    So, at least for now, skip the supplements. Instead, just add more mushrooms to your diet.
    
    (Original article from Markham Heid on Medium)",
    author_id: 7)

  # https://medium.com/the-entrepreneurs-journey/build-the-steak-not-the-sizzle-9cb61cfd9484
  Post.create!(title: "Build the Steak, not the Sizzle",
    body: "I have no doubt that there are many people who, upon their introduction to me - whether it was at a conference, or through a video I made online - didn't necessarily like me. Or maybe they liked me and thought \"this guy is full of it.\" The cynicism around me and my brand is pretty high, and I'm very aware of it. But I love it.

    The reason I love this is because I know that once you look under the hood, I deliver. You can market your ass off, but if your product sucks, you're dead. Your steak can sizzle and look crazy appetizing, but if it doesn't taste any good, your customers aren't coming back.

    In order to build a functional business that can take on a life of its own, your product just has to be real.

    You need to spend all of your time and energy on creating something that actually brings value to the people you're asking for money!

    I know it sounds obvious, but it's something I can't overstate. It's imperative.

    So let's take a step back and talk about me. I was 30 years old when I began to produce Wine Library TV episodes. I had already built a very large business. By the time I segued into making videos about business and marketing, I was 34 years old. So as far as a spectator was concerned I came out of nowhere and was all this and all that, but I had already built the businesses to back up everything I said. One of the reasons I created VaynerMedia in the last few years was to remind everybody (and myself!) that I actually build businesses (VM has 300 employees up from 20 just 2 years ago and has taken zero funding) .

    It is insane to me that people can speak on marketing and business without having even built a business. I mean I can respect that sometimes the best sports analysts never played the game, but those people tend to have other qualifications like being the son of a head coach who was groomed since birth or some other variable, they are also far and few between.

    Do you have any idea how many \"Social media experts\" were literally selling real-estate four years ago? Now I'm not going to get dragged into that mess because the truth remains undefeated. I mean how in the hell does anybody listen to a marketing author if her/his book is a best-seller on its first week when he gets all his friends to buy, and then is ranked 100,000th on Amazon two weeks later?! I released JJJRH 10 weeks ago. It's currently in the top 300 books on Amazon. If that wasn't the case, what good is my advice?

    Now this is where some people might talk about the whole idea of \"Fake it 'till you make it,\" but they're missing a really important detail that's right in front of them. The part of that statement that really matters is that you actually have to make it eventually. There is no such thing as \"Fake it 'till you fake it.\" Even though I think a lot of people behave as though that were the case.
    
    (Original article from Gary Vaynerchuk on Medium)",
    author_id: 2)

  # https://medium.com/near-future/real-meat-without-growing-a-full-animal-3ac06e93d6d8
  Post.create!(title: "Real Meat, Without Growing a Full Animal",
    body: "The world loves meat.

    From the early hunters-gatherers to the Big Mac, eating meat has been an integral part of the human experience: today, 90% of the world's population eats meat. Our love for meat not only defines our nutritional habits, but also the way we socialize. Indeed, meat is the cornerstone of countless social gatherings; picture the many backyard summer barbecues where families gather to share food, stories and laughter. This love of meat is woven into the fabric of our culture. However, the process through which meat is produced — animal agriculture — is an outdated system, and is in dire need of innovation.

    There are many problems associated with animal agriculture. It poses serious health risks, from the excessive use of antibiotics, to fecal contamination, to problems like E. Coli or the bird flu. It is a leading cause of climate change and many other forms of environmental degradation. It raises a variety of animal welfare concerns. And in a world driven by the bottom line, the economic cost of current animal production techniques is simply not sustainable — even the meat industry knows this.

    At the same time, the global love for meat is insatiable: in the next 30 years, demand for meat will double.

    There are simply not enough resources on the planet to satisfy that demand.

    What if there was a way to cultivate meat that is authentic and biologically identical to the meat we've always loved, without the immensely negative effects on the body, the planet and the animals?

    What if instead of farming animals only to slaughter them and harvest their meat, we could farm the meat directly from animal cells, without the environmental, health and ethical concerns?

    What if this new process was cheaper and faster than raising a whole animal, and only produced meat of the highest quality? In other words, what if the Big Mac was loaded with only the best quality beef instead of cow trimmings and scraps, and cost less than it does today?

    That's the innovation we at Memphis Meats have been hard at work developing. The result? Real meat, without the need to grow a full animal and all the problems associated with it.

    Our meat cultivation process is simple yet elegant, with safety, taste and variety acting as guideposts. We start by selecting animal cells that have the ability to self renew from our library of pork, beef or chicken meat cells. These cells, which are the core components of conventionally-produced meat, have the ability to rapidly and efficiently self-renew. We then feed these meat cells rich nutrients including vitamins, minerals and plants (the same way you'd feed grass to a cow), and let them grow into protein packed meat. Once the meat has achieved the desired tenderness, bon appétit: meat that is superior in quality and taste to the meat we have always enjoyed is harvested from our farms, ready to be cooked!

    And like beer breweries, large quantities of meat could be grown and harvested in a meat factory (meatery) that one could tour.

    While the process is still being perfected in our specialty kitchen, we envision a world where everybody has access to meat that is better for the body and the planet. Farmers might own a meatery, the same way they might own a herd of beef cattle. Like beer breweries, these meateries could be open to public tours; When was the last time you were offered a tour of a slaughterhouse? Local restaurants would be empowered to offer their unique meats in-house, sourced from a clean and safe meat producer. Locally-grown could have a whole new meaning!

    At the Near Future Summit, I had the pleasure of sharing some of the progress we at Memphis Meats have made in the last year. It has been quite a ride.

    In January 2016, we cultivated the world's first-ever cultured meatball using our cutting-edge techniques. We had a professional chef cook it, and invited a taster to try it. We filmed her candid reaction; the resulting video has received over 8 million views in just a few days. Our media debut prompted thousands of people to reach out to us with words of encouragement, many asking how they could get involved to help get Memphis Meats products on the shelves. With all this support, plus poll after poll showing that the public is yearning for safer and better meat, we feel uniquely positioned to help the world solve these pressing problems.

    Our goals are ambitious. We want to preserve a classic human tradition that has helped define so many cultures and ways of life.

    We want to use 21st century innovation to help solve some of the world's most pressing problems.

    And we cannot do it alone. We're calling on anybody and everybody inspired by the potential of cultured meat to reach out to us. To change the world, we're going to need a diverse coalition of folks from all walks of life to get involved. We couldn't be more excited.
      
    (Original article from Uma Valeti, MD on Medium)",
    author_id: 1)

  # https://medium.com/@caranicoletti/to-meat-or-not-to-meat-5a4ca2eb5f5d
  Post.create!(title: "To Meat or Not to Meat",
    body: "I grew up working in my family's butcher shop, so eating meat never really felt like it was a choice for me. Meat was what we ate, because meat was what we did — it was that simple. It wasn't until I read Charlotte's Web in the third grade, and many of my classmates vowed never to eat meat again, that I paused to think more critically about my family's trade.

    Despite the fact that the question of whether or not it's possible to eat meat and still love animals has followed me since then, as an adult I still choose to eat meat. I have also chosen to follow in my grandfather and great grandfather's footsteps and to work as a butcher — a profession that most people don't see as lining up with being an animal-lover.

    However, it's because I love animals that I chose this path — I want to learn as much as I can about our food systems so that I'm better able to educate people on how to eat meat in a kinder, more responsible, and mindful way.

    Do you eat meat? Why or why not?
    
    (Original article from Cara Nicoletti on Medium)",
    author_id: 4)

  # https://medium.com/@boobsradley/between-my-hectic-job-and-nourishing-social-life-it-s-not-always-easy-to-find-the-time-to-make-aa9c48a5458b
  Post.create!(title: "My LA Food Diary",
    body: "Between my hectic job and nourishing social life, it's not always easy to find the time to make mealtime \"me\"-time. It's hard running an empire without being expected to make dinner! This ain't no disco, and it ain't no country club, either: this is America's glistening food megalopolis. And I'm a modern businesswoman, not some do-nothing Italian grandmother.

    Breakfast is the same thing, every day: denuded feldspar. I soak it overnight in Mexican creek foam to create a pudding, which I suck from a vinegar-soaked sponge. It's truly hands free, which lets me simultaneously do my sun grunts and marinate my anus in squeezed orange pith.

    Then it's time to wake my son, Protein, for \"school.\" A lot of people in Los Angeles spend a ton of money on preschool, but Protein is already instructing inmates at a correctional facility to make confusing vanity license plates for poor people. Before he wheeled off on his solarblades, I tucked a wad of palm chaw into his perfect lower lip and air-kissed both of his gills.

    I'm always on the go, so I tend to grab what I can. It takes me about 72 minutes to be delivered from our treehouse in Watts to the store by palanquin, so by the time I get there I am starving.

    Today, for source family meal, we have a frozen beet foreskin sprinkled with volcanic ash and a gentle wreath of hemp pubes. So simple and satisfying! Normally I don't snack between meals but a strong wind passed through the shop when my assistant, Notion, opened the front door to throw a bag of fungus rinds at a smackhead. So I had a little bit of rind breeze, then used a hollowed out wax bean to snort a line of the fictional worm spice from \"Dune.\"

    Then it was time to visit my west side shop. I spent the shank of the afternoon in a throne made of pygmy bone ivory, focus-grouping new juices and crêmes while picking my teeth with a minature sceptre made from the Dalai Llama's sundried phlegm.

    I'm kind of a freak about quality, so all of our elixirs are passed through an onyx cock ring and ingested via douche. One of our interns had a birthday, but since none of us eat cake, I whipped him mercilessly with a studded turquoise belt.

    Dinner was a bouquet of tulips with my husband. We flash-boiled those in a marble cylinder full of rose quartz schmaltz and iron filings salvaged from the deck of the sunken French battleship Richelieu. My husband has been dead for eleven months, after Protein and I sacrificed him to the Egyptian God of death in a beautiful Equinox blood ritual.

    Around 11, Protein gets home, having basejumped into our rapeseed grove. For dessert, we pried the burls off of a thousand year old black oak while I cried. Protein left me to charge his crystals in the waning moonlight, so I climbed between two sheets of sous-vide human plasma I sleep in, and sipped my nightly gel tea made from clarified gerbil nipple discharge, through a crazy straw while I cut myself. All night I will be haunted by lesbian-tinged anxiety dreams about whale birth.

    Tomorrow I'll probably have that pudding again.
    
    (Original article from Julieanne Smolinski on Medium)",
    author_id: 3)

  # https://medium.com/cooking-with-sarah/recipe-17-steak-on-a-cast-iron-skillet-f82a1484a566
  Post.create!(title: "Recipe 17: Steak on a Cast Iron Skillet",
    body: "What You'll Need
    - 4–5 Redskin Potatoes
    - Steamed Corn
    - 1 inch thick steaks (whatever cut you like)
    - Cast iron skillet
    - Salt and Pepper (for rub)
    - Olive Oil
    - Tongs
    - Garlic (crushed or powder)
    - Butter
    - Spoon (for basting)

    How We Did It
    1. Take steaks out of the fridge and place on a plate (let them rest for 20 minutes).

    2. Preheat oven to 375 degrees.

    3. While steaks are resting, wash and cut redskin potatoes.

    4. Drizzle olive oil on potatoes and add 1/2 teaspoon garlic and salt and pepper to taste.

    5. In a greased casserole dish, dump potatoes in and bake in the oven. Cook for 20 minutes before putting steaks on, flip, and bake for another 25 minutes.

    6. While potatoes are baking, begin heating your cast iron skillet (the focus is to sear the steak, so make sure it's hot!).

    7. Season the steaks with salt and pepper. Mop up the seasoning with the steak to push in the leftover salt and pepper.

    8. Add olive oil to the cast iron skillet (enough to lightly cover the bottom).

    9. Lay steaks away from you (AHHH, listen to that sizzle).

    10. Let sit on the first side for 30 seconds. Flip.

    11. Let sit on the other side for 30 more seconds.

    12. Lift steak with tongs and rest them on the side of the pan so they can sear even better (the oil will cook it nicely this way).

    13. Lay steaks back down.

    14. Peal, crush, and add garlic to the pan (garlic powder will also work — but don't over do it, friends!).

    15. Flip steaks.

    16. Cut cubes of butter and add to the pan.

    17. Tilt the pan and begin to baste the steaks with the juices.

    18. Put the corn in the microwave (follow directions on the bag).

    19. Take the steaks off and let them rest.

    20. Once potatoes are done take them out of the oven, serve with steak and corn, and enjoy!

    Find the original recipe here: https://m.youtube.com/watch?v=AmC9SmCBUj4

    (Original article from Sarah Charles on Medium)",
    author_id: 6)

    # https://medium.com/@katiecaisse/i-stopped-eating-meat-and-this-is-what-happened-996b9a81a6a
    Post.create!(title: "I Stopped Eating Meat and This Is What Happened",
    body: "In August of 2017 I stopped eating meat and animal by-products after watching the documentary \"What The Health\".

    I want to be clear that I do not label myself as a vegan and I did not initially do this as part of a moral value. I did this for myself and because of my health.

    1. Death by Dairy
    
    I first started by cutting out all dairy and eggs beginning in June of 2017. Eggs always caused me severe stomach and digestive issues and I never really enjoyed them all that much so, what was the big deal with saying \"Smell ya later?\" I'll tell you, the big deal was that almost all of my digestive issues resolved, embarrassing acne and flaky dry patches on my skin cleared and haven't come back, and I began to feel more energized.The most rewarding benefit truly was my dissipating acne. I was spending a decent amount of money monthly on prescription acne medication, increased copays for \"specialist\" appointments to visit my dermatologist, and there was never any change in my skin. I truly don't think my skin has ever been so clear and so bright. I can confidently say that I've never felt more confident with my skin and it saves me money.

    Not once did my dermatologist suggest that my acne could be caused by dairy. He always blamed hormones and \"growing up\" and suggested that the only solution would be oily and smelly creams and lotions. Bullshit.

    2. Beans Beans They're Good For Your....

    Everything? Replacing meat based protein sources with plant-based protein sources was the icing on the cake. My energy dramatically increased, my mood was heightened, I was sleeping better, and I no longer was suffering from painful bloating after meals. I replaced meat with beans, tofu, some meat alternatives such as Gardein, and lentils. I love cooking, it's truly a passion of mine. I spent time in the kitchen re familiarizing myself with alternative options and learning how to replace animal products with plant products in meals. The whole learning process only took a week or so and it was more than worth it. It allowed me to become independently creative in the kitchen and experiment with new things and new ingredients.

    3. It's Not For Everyone and Intuitive Eating is Okay

    Our bodies tell us what we need if we listen closely and treat it kindly. The same way it tells you you're hungry and thirsty is the same way it tells you when you need more vitamins, protein, and other nutritional deficits. There are plenty of days where my body screams \"you need more protein\" and sometimes on these days I'll have a very small piece of fish or a plant-based protein shake. Not everyone is fit for a plant-based diet, and I understand that. It takes patients to make the change and you have to really want to do it for yourself. Life is all about balance. I don't typically dive on into dairy. Mostly because it has never ended well for me. But once every few months I will have some fish and if I pop into a coffee shop that doesn't have milk alternatives, I splash a little skim milk in my cup and move on with my day. It's not the end of the world.

    Life is about balance.

    Making this change made me happy. It made me feel free from foods that truly made me feel terrible. It brought me closer to a community who truly strives for a balanced lifestyle, empowerment, peace, personal growth, and self fulfillment. This change provided me more than a healthy body. This change provided me a healthy mindset, a support system, and a greater sense of myself.
    
    (Original article from Katie Caisse on Medium)",
    author_id: 8)

  # https://medium.com/@sarah_k_mock/meat-is-dead-long-live-meat-a86a7cfe7ecf
  Post.create!(title: "Meat is Dead, Long Live Meat",
    body: "Some of the most exciting food- and agtech startups on the menu today are selling a meatless future. Whether you favor Hampton Creek's eggless mayo or Impossible Food's meatless burger, there is a lot being said about taking animals completely out of the American Food System equation (a great primer on the argument can be found in Josh Tetrik's TED talk). With agriculture being the second highest carbon emitter in the US, cheap and abundant animal products pushing out waistlines and causing a spike in heart disease, and feedlots destroying air quality and weighing a little too heavily on our conscience, a more enlightened species might put consumption of animal products behind them.

    But then again, bacon.

    Though I won't take a stand on the morality of omnivorousness, there's a much more important point here, and it has nothing to do with morality and everything to do science. If we don't want the states between Nebraska and California to turn into a desert wasteland, America needs beef.

    Admittedly, it doesn't have to be beef. It could be any cloven-hoofed ruminant that travels in huge herds, eats grass, and can survive harsh, long winters, hot, dry summers, and a broad range of altitudes. Goats, deer, and elk are ruminants, though not grazers by nature (they are actually browsers by choice, and prefer forested areas to grasslands). Horses are happy to graze, but their hooves lack the pointed edges that aerate soil, nor do they travel in significant herds.

    Sheep are a possible alternative, though they tend to be picky eaters and will often eat select plants to death while leaving others to dominate. The obvious non-cattle alternative is the native species that filled this role in the American West, the American Bison, but alas, there are only about 340,000 bison in the US today, down from a height of around 60 million (that's 0.56% of the historic population). The Great Plains evolved over millennia to support this gigantic roving herds of ruminants, and in their absence, much has changed.

    Much of the American West is now at considerable risk for desertification. This isn't just a little drought or a few cracks in the dirt, the risk here is at least Dust Bowl-esque in proportions. If something isn't done about soil health in the West soon, our squarer states (Colorado, Wyoming, Oklahoma, Utah, New Mexico, Arizona, and parts of Texas, Idaho, and Montana) will become the sand dune-iest as well.

    The best of us thought, for decades even, that desertification was a result of over-grazing. And to be fair, sometimes, it is. But as a rule, we've come to terms with the fact that healthy ecosystems don't just accommodate grazing ruminants, they rely on them. Grazers play a role in soil health, and if we hope to restore our soils (and maybe even turn them into the phenomenal carbon sinks they could be), grazers have an important role to play. How important a role? I'll let Mr. Allan Savory, grassland ecosystem pioneer, enlighten you.

    So we need cattle. We need sheep. We need poultry (and water fowl). These animals fill important niches in their native environments as well as domesticated ones, they have immensely valuable contributions to make to soil and ecological diversity, with hoof and beak and claw. Whether or not we consume them (or their milk/eggs/etc.), other animals are important part of the Earth we inhabit, so even if we succeed in extracting them from our diet, it would be a grave error to do away with them altogether.

    Rather than focus solely on meatless options, we should look for alternative ways to raise animals that minimize the aforementioned woes. An example- mixed farming. Farmers are in a unique space now, with a high premiums on value-added food products (be that organic, grass-fed, non-GMO, etc.) to explore adding livestock back into their crop mix, even if it's just for home consumption. Even something as simple as having a few head of sheep grazing a cover crop (or weeds) in the off-season can be meaningful. Technologies that support this kind of transition among existing farmers are tremendously important, as opposed to those that focus solely on building holistic farms from the ground up. Technologies that allow farms to retrofit, to take gradual steps towards fundamental change, will undoubtedly be leaders.

    Look out for companies like PastureMap, who's looking to create a software to assist with management intensive grazing, or PastureScout, who's connecting people with cattle with people with pasture to optimize efficient use of the land. Also look for more cattle (and other livestock) wearables like those from Silent Herdsmen, or software like Tambero and Farmeron, that can use data to help farmers find the most effective ways to transition towards optimal practices. Making mixed and holistic farming methods economically viable and managerially simple for farmers will go a long way towards more mindful meat.

    Am I saying it's more environmentally ethical to be a mindful omnivore that favors grass fed meat over dogmatic vegetarianism? No. (But wouldn't that be nice.) I think it's important to be cautious when confronted with ideas we think are wrong, because often \"wrong\" is really just \"inconveniently right.\" If we all fall madly in love with the alternative foods of the future, we can populate the Great Plains with any kind of roaming herd we like, tear down all the fences (that aren't for human safety), and see what happens. We wax doom-and-gloom about our kids not being able to see the polar bears, but who knows, maybe our children will get to see the re-emergence of the American Bison, 2 million two ton animals, surging across the high plains of Wyoming, while they watch from their drones, or hover crafts, or Mars. The amazing thing is, that's possible.

    (Original article from Sarah Mock on Medium)",
    author_id: 2)

  # https://medium.com/@sethbannon/cleaning-the-record-on-clean-meat-4888815a8614
  Post.create!(title: "Cleaning the record on clean meat",
    body: "Lora Kolodny of TechCrunch recently ran a fascinating interview with Impossible Food's CEO Pat Brown. I'm a big fan of their work but Pat gets quite a number of things very wrong when discussing clean meat. I'm a bit of a clean meat aficionado, so let's examine his points one by one to set the record straight.

    \"First of all, it's not true you can do a better job that way. Because then you buy into, at best, the same limitations that a cow has.\"

    This misses entirely one of the core innovations of clean meat! Namely, that by focusing only on the biological processes that cause a cow to produce meat and ignoring the rest, you can dramatically improve the efficacy by which meat is made. Cows spend energy and resources on growing many things that have nothing to do with meat — bones and brains and hooves and fur and the list goes on. By growing meat only in a controlled environment and not these other things, clean meat production leaves behind the limitations of a cow.

    As evidence for this, consider that to harvest meat from a cow you need to birth it, let it grow in a field for 2 to 3 years (feeding it all the while), only to slaughter it and cut it up for meat. Clean meat, however, can be produced from scratch in as little as two weeks. Clean meat does away with the limitations of traditional animal agriculture.

    A study out of Oxford University showed clean meat could potentially be produced with 96% less greenhouse gas emissions, 45% less energy, 99% less land use, and 96% less water use than meat made through animal agriculture. Same limitations as a cow? No sir.

    \"And it's economically completely un-scalable.\"

    I'm not sure what he's basing this on but it's not the consensus opinion held by the top researchers in the field. I invite Pat to join me later this year at the next International Conference on Cultured Meat in Maastricht. I've attended the last two years and met many of the preeminent researchers in the field. Essentially everyone believes the cost to produce a pound of clean meat will soon match the cost to produce a pound of meat through animal agriculture. It's only a matter of time. And many see a path, at scale, to producing clean meat that's even cheaper than that harvested from slaughtered cows.

    I'd love to show Pat a graph of the production cost curve for clean meat! When Dr. Mark Post grew the first cultured burger in 2013 it cost $330,000 to make — about $1,056,000 per pound. Only 3 years later, Memphis Meats had brought costs down 58 fold to $18,000 per pound. One year later in early 2017 they dropped the costs another 2x to $9,000 per pound. I can't disclose specifics, but I can say they've continued to drop costs significantly in the last few months. And they've achieved these costs reductions without the benefits of commercial scale, and on only $3M of funding (disclosure: I'm an investor through Fifty Years), while Impossible Foods has raised $182M.

    To back up his claims, Pat says:

    \"If we could grow tissues that were a meaningful replica of animal tissues at an affordable price from stem cells, it would revolutionize medicine. Look around you. It's not happening.\"

    Again, this points to a big misunderstanding. The reason tissue engineering has not transformed the field of regenerative medicine has nothing to do with the costs of culturing or bioprinting tissue, and has everything to do with the difficulties of getting the body to accept a bioengineered organ. The immune system is designed to detect and fight off foreign elements, and tissue engineers vis a vis medicine haven't overcome this hurdle yet. Furthermore, bioprinted organs require both function and structure — a difficult challenge the field hasn't yet overcome. Clean meat, meanwhile, requires only a mass of cultured cells.

    The challenges that are holding back the use of tissue engineering in medicine don't exist with clean meat and so don't pose the same impediments.

    \"The simple answer is because [clean meat] is one of the stupidest ideas ever expressed.\"
    
    Hard to argue with this one :-) Surely if he poked around the internet he'd see clean meat doesn't rank anywhere near the top of the list.

    I understand why Pat might feel threatened by clean meat — perhaps he sees the field as a competitor. Consumers do unfortunately still have an overwhelming preference for real meat burgers vs plant based burgers — and Impossible Foods is going to great lengths to get plants to taste and feel like what clean meat already is — real meat. This might explain why, at the top of the interview, he objects to Impossible burgers being called \"plant meat\" and says he prefers to just call them \"meat\". It's true that, with the possible exception of Beyond Meat's Beyond Burger, Impossible comes closest to the taste of a real meat burger, using only plants. But they are, at the end of the day, made of plants, and not animal muscle and fat. Clean meat, on the other hand, is just that — real meat.

    In reality, both plant based alternatives and clean meat are necessary parts of the solution. Animal agriculture is simply unsustainable, contributing more to greenhouse gas emissions than all trains, trucks, cars, planes, and boats combined. The demand for plant based alternatives is growing, as is the demand for real meat. Given the severity of the climate crisis, and the size of the meat markets, there's both a need and room for several ten billion dollar solutions to be built. So can't everyone just get along?

    (Original article from Seth Bannon on Medium)",
    author_id: 7)

  # https://medium.com/@invoker/how-to-use-the-steak-clause-to-win-your-next-negotiation-55b4dafbea94
  Post.create!(title: "How to use \"the steak clause\" to win your next negotiation",
    body: "In the 2001 hit movie A Beautiful Mind, we got a peek into the brain of Nobel Prize-winning mathematician John Nash. Brilliant (but also schizophrenic), Nash pioneered a negotiating concept known as the Nash Equilibrium. His insights, in particular about when it pays (or doesn't) to change course, would go on to be applied to everything from nuclear arms negotiations to traffic planning and penalty kicks in football.

    I'm not a mathematician. I'm certainly no John Nash. And this is no Nash Equilibrium. But I'd like to humbly present my small contribution to negotiation strategy: I call it the Steak Dinner Clause. It probably won't change the course of global affairs, but it might just improve your next business deal.

    Some context. A few years ago, my company was negotiating with a vendor and we had reached an impasse. For background, Hootsuite is a social media management tool. We also offer online education and certification in social media. To reach the right clients, we work with vendors to sell our education product. In this instance, we had spent weeks negotiating with this particular vendor on price, revenue sharing and other terms. And we were almost home free — until an overlooked detail brought us to a standstill.

    No one had thought of credit card fees. When you buy something with a credit card, the seller generally has to eat the fee (around 2 percent of the purchase price). In this case, we couldn't agree on who would have to swallow this fee — us or the vendor. For some reason, neither side was willing to budge on this small detail. We wouldn't pay; they wouldn't pay; and no one was willing to split the difference. In the end, the sum in question was no more than a few thousand dollars. But it threatened to derail everything.

    Finally, we conceded: Fine, we'll pay the credit card fees, but on one condition, the Steak Dinner Clause. (Note: This was a stroke of genius from my colleague and good friend Michael Blondé).

    18 (s) Account Management:

    Upon every $100,000 in revenue generated, and at the discretion of Hootsuite, Vendor will take two Hootsuite representatives out for a steak dinner, at a price not more than $450 including tax and gratuity.

    In other words, we agreed to cover the fees, but they'd have to take us out to a steak dinner — their treat. In one sense, we got the short end of the stick — the fees far exceeded the value of the dinner. In another sense, however, this represented a huge win-win.

    Why? The dinners would turn out to be a powerful way to build a business relationship with this vendor. Every few months, members of our team get together with members of their team — always at the same spot (a classic steakhouse called Hy's in downtown Vancouver). Over the years, a lasting partnership has been built and expanded over porterhouses and New York strips. In fact, we've gone so often that our server knows our order by heart. (Thanks, Tim.) We now do more business with the vendor than ever, a relationship that both sides have benefitted from.

    This might not seem so revolutionary. But consider the alternatives: Either the negotiation would have foundered completely or someone would have been left with onerous terms — hardly a healthy way to start a business relationship. Instead, we found a way around that impasse that was actually additive. Rather than a compromise that no one was happy with, we found a way forward that benefitted everyone.

    Obviously, the Steak Dinner Clause doesn't have to be about steak. (In fact, considering the environmental footprint of beef, we're considering vegetarian alternatives.) It doesn't even have to be about going to dinner. You might have a ski-weekend clause or an NHL-night clause or a spa clause. At its heart, this strategy is about turning an impasse and potentially adversarial situation into an opportunity to build a relationship. It requires a small concession on one side (with an eye toward bigger opportunities and up-sells down the road). In exchange, the other side agrees to host some kind of collaborative, social experience — something that gets both parties together, ideally on a recurring basis.

    Yes, one party has to swallow a small loss. Yes, this approach is marginally more costly than a compromise solution. But the long-term payoff can be huge. The social gatherings become a platform to discuss what's working (or not) and deepen the business relationship. In a world where actual face time with partners is increasingly rare — and long-term, trusted allies are harder than ever to come by — the return on a steak dinner (or equivalent) can be profound.

    I know the Steak Dinner Clause idea is a little unconventional, but give it a try the next time you're stuck in a negotiation. When our lawyer, Paula, first saw it in our contract, she laughed and thought it was a joke. Then she thought for a while and said it was one of the best pieces of legal work she'd seen. In the end, anything that can transform an roadblock into an opportunity is probably worth a second look.

    (Original article from Ryan Holmes on Medium)",
    author_id: 1)

  # https://medium.com/slackjaw/is-food-that-is-falling-more-appealing-an-investigation-16426f13d256
  Post.create!(title: "Is falling food more appealing? An investigation.",
    body: "Every time I see a fast food commercial, I have this sinking feeling. This can't be going as planned. Something has gone wrong. Gravity is too much at work here. And food is falling.

    Food is plummeting down, bouncing, rolling around, and miraculously landing softly onto plates. Tomatoes are falling into fish bowls. Lettuce is using deli meat as a landing pad. Entire burger patties are being launched from the sky. Cheese is raining down on us all, and that pasta has been tossed and will soon break.

    I am fascinated by the phenomenon.

    As far as I can tell, this advertising strategy is limited to the culinary. I haven't seen stylish iPhones being dropped onto the ground, or trucks being pushed over cliffs. I have yet to witness a car-accident-injury attorney leaping from great heights. But I have seen many a sandwich survive a hard fall on camera.

    What is the appeal? Perhaps we like the entrance from the top of the screen, in some way. Maybe we flash back to when we were infants, being fed from some unfathomable hand up above. We are reminded of gravity. We are assured that our food is bounce-proof.

    Does the surrender to the fall make food more appealing? Maybe a fall allows moisture, juiciness, \"freshness\" to be captured on film. Perhaps food does look better in motion, for no photo can ever capture the true grace of ketchup. If there was no slow-motion splat, liquid spewing into carefully calibrated lighting, would we enough know how absolutely fresh this burger is?

    The foodstuffs always seem to have a miraculously soft landing, so they can't have been dropped far. Perhaps the offending klutz dropped them just above camera, pulling back her hand at the last second to avoid detection. Maybe it's all been a mistake. Do you need help, fast food industry? A steady hand? A sturdier table? A bib?

    Fast food advertising industry, I am here for you. No food needs to be dropped, no longer. Let's end the madness, together.

    Say it with me: Stable Table Food 2017 ™

    (Original article from Corinne Kocher on Medium)",
    author_id: 4)

  # https://medium.com/thrive-global/brain-food-its-not-the-coconut-oil-or-the-fish-it-s-the-greens-f3dbc5f1e59
  Post.create!(title: "Brain Food: It's Not the Coconut Oil or the Fish, It's the Greens",
    body: "Many people are concerned about the growing number of reported cases of Alzheimer's dementia and are looking for strategies to avoid this disabling and lethal degenerative process. I would recommend the book The Alzheimer's Solution for a science backed plan to prevent the problem. Many have heard from a friend of a friend that fish and coconut oil prevent brain decline but are these really active and worth eating on a regular basis? Or will the mercury and pollutants in fish and the saturated fat in coconut oil kill you first? New data indicates these are not the brain foods to concentrate on but the humble leafy greens are the foods to concentrate on to concentrate.

    Researchers from the Memory and Aging Project followed 960 participants over 5 years who had 2 cognitive assessments and also had a food frequency questionnaire completed. In a model assessing diet, age, sex, education, alcohol, activity, cognitive exercises, the consumption of green leafy vegetables was associated with slower cognitive decline. Cognitive decline in those who ate the most servings of green leafy vegetables (1.3 servings per day versus the lowest group at 0.1 serving per day) was slowed. If you were wondering, one half cup of cooked spinach was counted as a serving. The greens eaters showed brain ages 11 years younger than those who ate the least greens! Certain nutrients in greens in particular, like folate, lutein, vitamin E, nitrates, and B-carotene, were related to better brain power.

    Dr. Morris, author of the study, indicated that greens are healthy and that \"some of the nutrients already have excellent scientific evidence, such as vitamin E, a potent antioxidant which has been demonstrated in carefully controlled animal models to protect against neuron loss, oxidative stress and inflammation, and the accumulation of amyloid plaques. Other of the nutrients are newly identified\" to relate to better brain health like nitrates and vitamin K. She went on to say that \"Daily consumption of leafy greens may be a simple and effective way to protect against loss in memory and other cognitive abilities\".

    Food fads come and go. The current hot button in the ketogenic world is that carbs kill brains, as if there were only one carb, and coconut oil protects your thinking power. While further studies are needed, heading for the salad bar and staying far away from animal based ketogenic diets, associated with a higher rate of death in many studies, is advised. If you do not like to eat green leafy vegetables, learn to make a healthy smoothie hiding them with frozen or fresh blueberries, another brain supportive food choice.

    (Original article from Joel Kahn on Medium)",
    author_id: 2)

  # https://medium.com/@gabrieliosa/if-in-london-try-the-sushi-at-this-place-and-youll-fall-in-love-with-japanese-food-486efa2a7089
  Post.create!(title: "If in London, Try the Sushi at This Place and You'll Fall in Love with Japanese Food",
    body: "I'm a big fan of Japanese food. I take my weekly portion of ramen very seriously and, even though I know it's never going to be even close to the real deal, I'm still enjoying it and feel like a Japanese while eating it. No pun intended. When I'm going out to eat, I usually do it because of a craving, as I'm not a big fan of traditional, big menu places.

    Last week in London, I was craving some sushi, so I went on TripAdvisor and found Kappa, a little place a few blocks away from my hotel in Kensington.

    Now, for those of you who don't know, Kensington is one of the richest neighbourhoods in London, where people drive Ferrari's and Bentley's much more than they do old black cabs.

    With that in mind and with a 4.5 rating on TripAdvisor, a nice decor and just a few seats available, I expected to pay half of my vacation money on a tuna roll and a bowl of ramen.

    Fortunately, I found the prices at Kappa to be more reasonable then I could've ever dreamed. Actually, the whole meal set us back less than 30 pounds, which is an amazing deal for a lunch for two.

    We had the nigiri and maki set, 7 pics of nigiri sushi hand-selected by the chef and 6 pics of the avocado salmon roll. The fish was crazy fresh, soft and delicious. The rice was the best sushi rice I've ever tried, simply beautiful. My favourite was the shrimp nigiri, which was melt-in-the-mouth soft and full of flavour. The rolls were decently sized and very filling.

    We also had the shrimp tempura, 5 huge shrimps covered in a sweet, light batter that floated in our mouths as it disappeared. They offered us a miso soup on the house, as the set came with only one bowl, but also water, which was an amazing gesture from the staff.

    Overall, the food was simply stunning and when I'm going back to London I'll definitely revisit this place for some ramen and other Japanese dishes.

    If you're a fan of sushi or a virgin of Japanese cuisine, you have to check this place out. This is not a paid endorsement, it's just my way of thanking the staff of this little gem of a place, steps away from the Earl's Court Underground Station in Kensington, for their service and delicious food, and for turning an ordinary lunch in London into an experience to remember forever.

    (Original article from Gabriel Iosa on Medium)",
    author_id: 1)

  # https://medium.com/@shanisilver/single-girl-soup-whatevers-in-the-house-chicken-tortilla-9f0a36258c2d
  Post.create!(title: "Single Girl Soup: Whatever's In The House Chicken Tortilla",
    body: "I don't always eat what I cook. This soup is always made with the notion that I'll have a bad cold or flu someday soon and I won't want to order Seamless soup that tastes like the styrofoam container it biked to my apartment in, so I'm never more than defrosting away from something yummy, homemade, and comforting. And spicy, because I'm me.

    Chicken tortilla soup is also a great soup to make when summer is being an asshole and outwearing its welcome well into what would normally be considered fall. A good crossover soup, if you will. I make this whenever I realize I already have all of its ingredients lying around the house. It's very easy to substitute ingredients or leave them out altogether if you don't have them. I've made suggestions in the ingredients list below. Or make your own, live your life.

    There are two secrets to this soup: First, make it in a crockpot. Crockpots are my favorite cooking appliance of all time. I desperately want one that looks like a cauldron, because it seems fitting and also I am obviously a sorceress. The second secret is that you add in enchilada sauce to the soup. Sounds weird, tastes amazing. I make my own enchilada sauce (so you know you're not putting any kind of crap into an otherwise very healthy soup), and I've included that recipe at the end of this post. It's very, very easy, calm down.

    As with all my recipes, this doesn't make a ton of soup. You'll probably get three freezable portions or two freezies with one to eat right now because we're all impatient animals.

    Ingredients
    - Four boneless, skinless chicken breasts (you don't need to cook them first)
    - Three cups chicken broth (I don't make my own)
    - 1 can roasted tomatoes with green chilies (or roast your own, or used crushed tomatoes, or diced tomatoes without the chilies, really anything will work)
    - Homemade enchilada sauce* or some sauce from a jar you peasant
    - About 1/4 of an onion, diced
    - A little bit of jalapeño, chopped as finely as possible (wear gloves or put your contact lenses in BEFORE you do this part). This isn't mandatory by the way, I just happened to have one that was about to go bad and figured what the hell.
    - Some corn (I had a little baggie of frozen corn from the farmer's market)
    - Some black beans (Same, small baggie of frozen leftovers)
    - A couple cloves of crushed garlic (I didn't have any so I just used garlic powder, which was fine I think)
    - Cumin (a dash or five)
    - Chili powder (same measuring here)
    - Cayenne (I put cayenne in everything — be sparing about this if you're using jalapeño or you'll melt your face right off)
    - 1 bay leaf (If you don't have any, do NOT make a special trip to the store. Just pick some up next time and stick them in the back of the pantry for the seven other random recipes you'll make this year that need it.)
    - salt/pepper to taste
    - juice of one lime (Fun fact, I freeze lime juice into ice cubes and pour beer over them in the summer, together with cayenne pepper frozen into ice cubes, which makes for very yummy, spicy beer. I had a few left over frozen lime cubes but no fresh limes, so I dropped one of these bad boys in the crockpot. Not ideal, but effective.)
    - Crushed tortilla chips as garnish, optional but encouraged
    - One crockpot
    - Half a Sunday unless you're the kind of person who is comfortable leaving the house with the crockpot on. I am not.

    Directions
    - Put everything except the corn, black beans, and lime juice in a crock pot.
    - Turn the crockpot on high (put the lid on for crying out loud)
    - Cook for 2–3 hours
    - Remove chicken, shred it like a wild beast, and then return it to the crockpot. (If you don't have claws, just use two forks. Growl as you do this, it helps.)
    - Add corn, black beans, and lime juice to crock pot
    - Cook for another hour
    - Eat, or freeze into individual portions until you get sick or bored, then eat
    - Have absolutely no fun washing your crockpot by hand.

    *As promised, here's how you make enchilada sauce, adapted from this recipe**. I prepare the spice mixture as if I'm making a whole recipe, but then only use half the spices and half the broth. Put the rest of the spices in a little baggie so its easier to make this stuff next time you don't need very much of it. Or just make the whole damn thing, I don't care. Make sure you have all ingredients prepped before you start cooking this, it comes together fast and you'll make a mess if you don't prepare... I've heard...

    - Spice blend (3 tbs flour, 2 tbs chili powder, 1 tsp cumin, 1 tsp garlic powder, a pinch of oregano, pinch of cinnamon, salt & pepper to taste)
    - Two tablespoons or one giant tablespoon tomato paste (I freeze the rest of the can into one-tablespoon portions for later use.)
    - Some olive oil
    - 1 cup broth (vegetable or chicken)
    - Splash of apple cider vinegar

    Heat olive oil in a pot, then add in spice mixture and whisk around for about a minute. Then add in tomato paste, keep whisking, and add in broth slowly, whisky whisky still. Reduce heat to just barely medium and cook at a simmer for about 5 minutes, whisking often. Remove from heat, at splash of apple cider vinegar, salt and pepper, and let cool. (Sauce will thicken more as it cools.)

    Add this to your tortilla soup, or make actual enchiladas, that's also an option. During fall and winter I make crockpot pulled pork + black bean enchiladas that are eyebrow-bleaching delicious and I'll certainly share that recipe with you at some point. Now go cook something or Netflix something or take a walk and enjoy the day. I'm going to go try to make a new pumpkin pasta dish to take to work as lunch for the week so let's hope I don't ruin it, hmm?

    **https://cookieandkate.com/enchilada-sauce-recipe

    (Original article from Shani Silver on Medium)",
    author_id: 3)

  # https://medium.com/@chazhutton/stop-buying-pasta-you-idiot-1f90bf761b60
  Post.create!(title: "Stop buying pasta you idiot.",
    body: "So, I bet you assume the only people who make their own pasta are old disgruntled Italian Nonnas who constantly tell you to eat more while suggesting you should find a 'nice boy or girl' to marry.

    Well, apart from that being a fairly lazy stereotype in aid of a cheap laugh, you're completely wrong.

    Because here's the thing: Eggs and Flour.

    Eggs... and fucking Flour. Seriously.

    Apart from a pinch of salt, that's ALL THERE IS TO IT. You've already got all the ingredients for pasta and you didn't even realise it.

    And here's the other crazy thing; you can spend all day desperately trying to impress your friends by making some elaborate dinner or... you can just combine two ingredients and your dinner guests will lose their fucking minds. This is as close as you get to a culinary magic trick. Just watch their faces once you tell them in that 'oh-so-nonchalant' tone that you handmade the pasta.

    In short, people are unjustifiably impressed by the correct combining of eggs and flour, and so you should capitalise on this idiocy.

    Oh, did I also mention there's no measures to speak of? That's right! You're just going to guess your way through this, and miraculously, it's still going to work! Because here's the great thing about making pasta: You've got do do this entirely by feel. You can't just pop in the perfect measures, give it a mix and be done with it, no no — you've got to get your hands in there and feel it out, you need to know your pasta, become one with the pasta, you are the pasta, and the pasta is you.

    Actually it's just eggs and flour but you get my drift.

    Anyway, here's how you do it.

    First up you need to make a little volcano like some school science experiment. I'm serious! Get your flour and tip some out on the bench top. Make sure you're on a smooth flat non-permeable surface — marble is best, plastic is fine, a polished timber works to, look, just don't do this on a park bench or like, a rock.

    Now, you need make a little caldera. (just google it) — make your caldera about as wide as a plate and make the sides high enough to hold some eggs inside.

    You can use as many or as few eggs as you like, but generally two or three is a good place to start.

    Crack your eggs into the middle of your caldera to give it that real caldera look (but also because this is how the recipe goes) — Also, drop a few pinches of salt in about now.

    Okay, so here's the tricky part and an inescapable truth: The bad news is that you're going to completely screw this up a few times before you get it right. The good news is that eggs and flour are relatively cheap. You're also going to get quite messy, so I suggest wearing the kind of clothes you'd put on if you were about to paint a house. (trust me on this)

    Or an apron I guess.

    Get a fork, and slowly start stirring the eggs inside your crater of flour, as you stir, bits of flour from the inside should start mixing into the eggs, and your crater should start widening out slowly as the mix in the middle increases in size. Don't worry if it's all looking a big gloopy and there's big chunks of undissolved flour — stay with it. You should also continuously sprinkle more flour over the top of your mixture as you go.

    What you're trying to do here is create a dough, so you want to keep stirring and adding flour until it gets thick enough that you can start moving it around with your hands — keep the flour up to it, and eventually you're going to get a very fluid blob that's starting to hold together.

    If you start moving it with your hands and it all starts sticking to your fingers, you've probably starting handling it too early, but don't panic! — just add more flour, get those bits off your fingers, add it all back together and keep moving it.

    Quick side note: It's important at this point to look confident while doing this. Even if your juvenile dough is playing up and wreaking havoc across your bench, remain calm and serene as if it's all part of the plan. People watching you will be impressed by this perceived professionalism.

    Now, the method here is using the bottom of your palm, push out the dough, fold it over, push it out again. Keep doing this, and keep adding flour. Fold, Push, Fold, Push, Sprinkle, Fold, Push.

    What you're aiming for is a nice elastic consistency. If it's sticking to your hand a bit you need more flour. Sometimes it's going to feel way too dry, but there's actually a lot of moisture locked up in there — you just need to keep working it (folding, pushing out, etc) and eventually the whole thing will lose that dryness and you'll need a touch more flour again.

    The sweet spot you're looking for here is a 'tacky' feeling — it should feel slightly sticky, but when you pull your hand off it, nothing sticks to your hand — like a freshly varnished table or your clammy hands after a job interview.

    Here's the test: get it into a nice little ball shape, plop it on the table and stick your finger into the middle of it — if your finger comes out with nothing stuck onto it, it's GOOD!

    If you feel like it's a bit too dry, and you really can't bring it back to that sweet spot, run your hands under a tap, shake them off, and keep working the dough — that tiny extra bit of moisture is sometimes all you need to bring it back.

    Tired yet? You should be. This is a labour of love. How's that face? Are you still looking like you know what you're doing?

    Okay — Next up, get it into a little ball, and wrap that ball up in Glad-wrap (cling film for you non-Australians) and leave it in the shade somewhere for about an hour. Or if you're in a rush half an hour, or even 45 minutes. Whatever works for you really.

    Come back to it, unwrap it (if it's sticking to the gladwrap, which it probably shouldn't, just add a bit more flour).

    Now cut your little ball into quarters, sprinkle some flour over your bench, get your roller and start rolling out your sections of dough.

    Get a nice little rectangle happening, and then fold that over, and roll it out again. Then fold that over, and roll that out. Once you've done a few folds, roll it out for good, be sure to sprinkle more flour over the dough every now and again — as you roll it the dough can get stickier, and you don't want it sticking to your bench (this is why you put a bit of flour down).

    If each piece gets too long before it gets thin enough, just cut it in half and roll it out in parts.

    Once you've got it to the thickness of some nice tagliatelle or fettuccine, you then just need to neatly fold up your rolled out dough (I like to fold mine into the width of say a credit-card) and from there, just cut along the roll for the width of the tagliatelle or fettuccine you'd like — then, very carefully — unroll each strand of pasta and plop it onto a plate — be sure to throw in a sprinkle of flour here and there so it doesn't all start to stick together.

    Main thing here is that if as any point anything is sticking... add more flour.

    Then do this with the rest of it, and you should by this time have made a pretty horrendous mess (which people will be impressed by).

    From here, boil some water (I like to put pepper, salt and a dash of oil into my water. But hey, you do you) and throw your pasta in once it's boiling (it should only need about two minutes) and then pull it out add whatever you want with it and you're ready to go and act all nonchalant around your friends!

    Or, in reality — you completely fucked it all up, and you're throwing it in a bin. But that's okay, just pour some more flour, crack some eggs, start again and remember, Be the pasta.

    (Original article from Chaz Hutton on Medium)",
    author_id: 8)

  # https://medium.com/@TrukeLayser/actually-imma-keep-cooking-pasta-from-a-box-thanks-7f7eb9cf5e5
  Post.create!(title: "Actually, imma keep cooking pasta from a box. Thanks.",
    body: "Robert Langdon is a good digital friend of mine. Or at least he used to be until he wrote \"Stop buying pasta you idiot.\"

    His guide wasn't simply witty and persuasive. Oh no. Ol' Rob also drew his own illustrations. Insufferable. He's so much better than me and I hate it.

    My artistic prowess is entirely dependent upon my ability to search on Unsplash. Look. Here's my artwork. Hope you enjoy it, because it's all you're getting.

    Why I'll Keep Cooking Pasta From A Box
    1. Do you see this 3-year-old? Well? Do you? Because he's in my kitchen every night, and he shows up hungry. He wants his mac and cheese. So if I tell him \"Hang on, kiddo. Daddy's trying to find the perfect flour & egg combination for these noodles,\" he will straight up poop on my floor.

    2. Oh, I'm sorry. Did I travel to Modena without realizing it? Wait, am I the owner of and genius behind Osteria Francescana? I'M NOT? I'm actually a suburban 34-year-old who prefers to shovel food instead of savoring it? Well then. Boxed pasta it shall be. Jeeves! Pass the $4 bottle of Cabernet Sauvignon, per favore.

    3. That doughy goo feels icky and it makes me mad. Go back to my Unsplash collage and look at the second photo from the top in the middle column. See that chef's fingertips? Yeah. That's my nightmare. Know what doesn't get doughy goo on my fingertips? Boxed pasta.

    4. Doughy goo. A great phrase. I just wanted to say it again. Finally, and most importantly,

    5. I DO NOT WANT TO AND YOU CANNOT MAKE ME. Create, create, create. It's all I do every workday. Who are these superhumans who can return home and keep creating? Because I can't do it. I need a break and I want to consume something without having to sweat over it. I'm not picky. Food, entertainment, whatever. Please just let me turn off my brain and fire it into my mouth.

    How To Cook Pasta From A Box
    1. Read the box.

    2. Literally no other steps.

    Shoutout to Al Dente. Not sure who he is, but he's obviously a legend in the pasta community since his cooking recommendations are on every box. Love you, Al.

    In Summation:
    Join the movement and cook boxed pasta. It saves time, you won't make a mess, and there won't be poop on your floor.

    (Original article from Luke Trayser on Medium)",
    author_id: 7)

  # https://medium.com/personal-growth/the-1-healthiest-food-for-adding-years-to-your-life-5de374d613da
  Post.create!(title: "The #1 Healthiest Food for Adding Years to Your Life",
    body: "The single healthiest food out there might surprise you.

    Chances are this food is not a part of your regular diet, but it is the cornerstone food of the longest-lived people in the world. In fact, in the locations around the world with the highest concentrations of 100-year-olds, people are eating at least four times as much of this food as we are.

    That is according to Dan Buettner, a National Geographic Fellow and New York Times bestselling author, who has spent over a decade studying the places around the globe where people live the longest.

    This superfood is beans — and eating just a cup per day is the single-best longevity supplement available.

    That's right, eating a cup of beans per day can add an extra four years to your life, says Buettner.

    He argues that beans of every type are the world's greatest longevity foods — including black beans, pinto beans, white beans, garbanzo beans, fava beans, black eyed peas, and lentils.

    Beans are the ultimate superfood because they have the ideal mix of protein (21 percent), complex carbohydrates (77 percent — the type of carbs that provide slow and steady energy), and fat (only a few percent). They are also an excellent source of fiber and deliver more nutrients per gram than any other food on the planet.

    If that isn't enough, beans have also been shown to support digestion, regulate blood sugar, lower cholesterol, boost heart health, and possibly even reduce cancer risk.

    Pound for pound, beans are simply the healthiest food in the world.

    If you're ready to add beans to your daily regimen, here are some of Buettner's tips to get started:

    - Eat beans that you like and cook recipes that will taste good. This is easier said than done, so reference this great list of bean dish recipes (https://bluezones.com/?s=Beans&post_type=recipe).

    - Make sure the only ingredients in the beans you buy are: beans, water, spices, and maybe a bit of salt (avoid any beans with added sugar or fat).

    - It is best to buy dry beans, but low-sodium beans in cans are fine as well.

    - Use pureed beans as a thickener in soups to add protein and a creamy texture.

    - Add cooked beans to salads to make them more filling.

    - Keep your kitchen stocked with other ingredients that are popular in bean recipes, including carrots, celery, onion, garlic, thyme, and pepper.

    - Instead of meat and potatoes for your meals, think beans and vegetables. After beans, vegetables are the next most important item to add to your diet.
    
    - When going out for dinner, Mexican is a good option. Mexican restaurants always serve pinto or black beans, which can be dressed up with rice, vegetables, guacamole, and hot sauce (just make sure to avoid the white flour tortillas — opt for corn tortillas instead).

    It sounds too good to be true, but the simple addition of beans to your daily diet can add years to your life.

    Here's to a long, happy, and healthy life!

    (Original article from Andrew Merle on Medium)",
    author_id: 1)

  # https://medium.com/the-coffeelicious/why-you-should-be-a-food-snob-71d2c8d2317
  Post.create!(title: "Why You Should Be a Food Snob",
    body: "Since when did caring about the standards of your food and appreciating high quality food become mockingly synonymous with 'elitist?'

    I don't know, and I really don't care.

    All I know is that needs to change.

    People should care about where their food comes from. They should demand higher standards for how the food they put into their bodies is brought before them. This is what fuels our life. It should be our priority to make sure it is up to standard. In production and in result.

    In this day and age, it has never been more important where our food comes from and how it was grown. Our food choices directly contribute to the environment and to the sustainability of food in the future.

    What and how we eat and what it means:
    - The bananas we consume, the Cavendish, are genetically identical, and if a disease were to effect them they could be wiped out easily. They are clones of each other, and thus equally at risk for potential disease.

    - Cattle and livestock are the source of 15% of carbon emissions.

    - Cattle consume the majority of antibiotics and are most likely the primary cause for antibiotic superbugs.

    - The global shipping of our food across the world creates large amounts of emissions and pollution, along with costing a great deal. Because of shipping and how we buy it, in North America, a third of food product is wasted.

    - Animals raised in close proximity, such as chicken coops, can cause disease to spread rapidly as seen in this years avian flu epidemic.

    - Industrial farming encourages breeding for ease-of-transport rather than nutrition. This is also lowers genetic diversity and contributes to the loss of other types of fruits and vegetables.

    - Over eighty percent of the world's almonds are grown in California. The price of the almond has been fluctuating based on the changing climate and drought in California. The fate of the majority of the almond is tied to California.

    And that is just the tip of the iceberg.

    I'm not a anti-GMO or super pro-organic person. I am pro-sustainability and being conscious about the choices of the products that go into my body. There should be an active discussion about how food is grown. Everyone should be able to talk about it and be knowledgeable about it. Food is one of the few things in this world that all humans experience and need. All classes and types of people eat. This is a global issue.

    Think about what you are buying. Do you know how it was grown? Do you know where it came from? Are the practices going into its production ones that are sustainable, so that it can continue to be produced and eaten?

    You don't have to be ignorant. You shouldn't be. Take a moment and learn about what you are eating. Do it for yourself and for the food itself. Respect it.

    As for purchasing power, if you are able, try to buy the products that you have learned to be more sustainable. Paying more for a piece of meat or choosing to shop organic is not simply buying better food for your palette; it is buying a better future.

    And if someone calls you a food snob, take it with pride. Because you know about your food. You are an informed consumer that chooses foods that support good agriculture practices.

    Along with being simply delicious, of course.

    (Original article from Sarah Sunday on Medium)",
    author_id: 5)

  # https://medium.com/cooking-with-sarah/recipe-25-steak-tacos-with-guacamole-fbd7954cbd80
  Post.create!(title: "Recipe 25: Steak Tacos with Guacamole",
    body: "What You'll Need
    For Steak...
    - Sirloin (8–16 oz) — size depending on how many you are feeding. It's killer leftover, too.
    - Chili Powder (1 teaspoon)
    - Salt (1/4 teaspoon)
    - Pepper (1/4 teaspoon)
    - Lime, cut into wedges (1 medium-size)
    - Sour Cream (1/4 cup)
    - Corn Tortillas
    - Cast Iron Skillet or any Non-Stick Skillet
    - Cooking Spray

    For Guacamole...
    - Avocado, ripe (1 medium)
    - Onion, chopped (1/4 cup)
    - Tomato, chopped (1/4 cup)
    - Lime juice (1 teaspoon)
    - Salt, to taste

    How We Did It
    1. Begin by removing avocado flesh from skin. Mash until smooth.

    2. Add chopped onions, chopped tomatoes, and lime juice and mix thoroughly. Place in fridge.

    3. Mix together chili powder, salt, and pepper. Rub it into both sides of the steak.
    (Note: Trim fat off of sirloin if necessary (or desired).)

    4. Coat your cast iron skillet (or non-stick skillet) with cooking spray and heat to medium-high heat.
    
    5. Grill both sides of the steak for 7 minutes per side (or until it is to your liking).

    6. Remove the steak from the skillet, let the meat rest for 5 minutes, and carve into thin slices.

    7. Warm your tortillas by heating a separate pan on low-medium heat. Heat on both sides for around 2 minutes (or until they are to your liking).

    8. Add steak, sour cream, guacamole, and lime (juice) on top of tortillas.

    9. Enjoy!
    
    Find the original recipe here: https://gimmedelicious.com/2014/09/11/mexican-steak-tacos-with-simple-guacamole/
    
    (Original article from Sarah Charles on Medium)",
    author_id: 6)

  # https://medium.com/the-mission/how-to-make-chicken-stock-and-grow-up-487f1c9736a7
  Post.create!(title: "How to Make Chicken Stock (...and grow up)",
    body: "In our own ways, big and small, we all have to learn how to be adults.

    In my early thirties I lived in Boston, while traveling a lot for work and pleasure. In between trips, while home, I sheepishly explored domestic undertakings. Having dinner parties was one of my most favorite things to do. Only snag is that I really don't know how to cook.

    I insisted on hosting many nights at my house, and forced my friends to endure chopping root vegetables with cheese knives while I set the table, lit the candles and played my favorite music to set the mood.

    Luckily I have great friends.

    One night we roasted a chicken. Afterwards my friend said, \"Now you can make a really great stock.\"

    \"Totally,\" I replied, as if I were a normal person and knew what this meant or how to do it.

    As the youngest of five I wasn't allowed in the laundry room. My jobs included unloading the dishwasher and occasionally folding the clothes, which I'm sure was eventually taken away because I only remember trying to trap the cat under the laundry basket. And competing over who could fly the underwear farthest across the room — using only the ceiling fan.

    I sometimes like to say I was raised like a boy because, you know, I am pretty sporty. But I think the truth is, I was raised like the youngest of five — by parents who liked things a certain way and found it easier to do it themselves. I was allowed, and in fact told, to go play video games while my mom and older sisters cooked thanksgiving dinner.

    I'm thirty-eight, and when I go to my mother's house — it's better to ask my fifty-two year old sister to do my laundry, than to watch my mother's anxiety.

    I went to college not knowing how to use an iron. My college was the Air Force Academy, and we learned weird things to do with an iron. We strapped down the sheets with shirt guarders (funny little contraptions that attach your socks to your shirts — to keep your socks up and your shirt down) and then ironed the sheets, after the bed was made.

    A friend of mine still has a scar on her neck from ironing her shirt collar,after she was dressed. Of course we also had an extra iron on hand for the in room grilled cheese delicacy.

    I absolutely took advantage of the laundry service privilege. This didn't give me away exactly. Many of us used it because we were so sleep deprived. No one had the energy to stay awake long enough to wait for the dryer to be done.

    Freshman year a friend of mine actually fell asleep while he was explaining a math equation, in the front of the room, at the chalkboard.

    I remember watching my college boyfriend do his laundry. We were seniors and had more free time to do things, like sleep. He didn't know it, but I was taking notes.

    His friend asked him,

    \"Do you want me to separate the whites?\"

    \"No, just throw them all in together on cold and use the permanent press setting.\"

    I've ruined a lot of clothes since then, and picked up a few other tips along the way, but hallelujah. I was free. I knew how to use a washing machine.

    You might be wondering how I learned to use a tampon. And luckily the box comes with very explicit instructions and pictures.

    So when my friend told me, \"All you have to do is boil the bones with the all of the left over vegetables scraps for a few hours.\" I thought, I think I can do that.

    And then I called the next day for more details.

    \"Bay leaf, right?\"

    \"Yes.\"

    \"Salt. Pepper?\"

    \"No salt. A few pepper corns.\"

    \"Anything else?\"

    \"Plenty of onion, leek and fennel scraps. You definitely need a few carrots and celery stalks, but you have that, right?\"

    \"Oh, yea, got it!\"

    Hours went by and I kept eagerly checking. It smelled good, but man did it taste watery.

    \"So it's been five hours, and it still doesn't taste good? What am I missing?\"

    \"You've been simmering it for five hours?\"

    \"Ya, I even turned it up a little bit for the last hour.\"

    \"Hm, that doesn't sound right.\"

    \"Right, I had to turn it down again because it was boiling over the lid and making a mess.\"

    \"Wait, the lid? You have to simmer it with the lid OFF. The whole point is to boil it down.\"

    Depending on how you were raised, you can probably choose to mindlessly live out the habits you were raised with — and get by just fine.

    We each have the choice to keep our perspectives long and skinny, and live life looking through the straws of our youth.

    Or, we can have the courage to let life break us open. We can actively explore our blind spots, because no matter how perfectly you were raised, you have them too.

    WHAT I'VE LEARNED THE HARD WAY, is that these lessons will probably keep sneaking up on me.

    And I choose embarrassment over ignorance.

    (Original article from Meghann McNiff on Medium)",
    author_id: 2)

  # https://medium.com/food-is-the-new-internet/get-ready-for-a-meat-revolution-df21cd27c7fc
  Post.create!(title: "Get Ready for a Meat Revolution",
    body: "You might call it the Manhattan Project of food. It's been the subject of breathless whispers, rumors and speculation throughout Silicon Valley and beyond. They've attracted tons of press and generated major waves on social media, including a now legendary viral video. And this summer, Impossible Foods is finally getting ready to take center stage. That's because this most mysterious and uber-funded startup will launch the product it has obsessively worked on for over 3 years, and could change how we look at meat forever.

    It all started in 2011, when renowned Stanford biochemist Patrick Brown desired to turn his scientific expertise toward solving a major world problem. It didn't take long to zero in on the perfect candidate: beef — more specifically, hamburgers. His chosen challenge? Make burgers using plants instead of cows.

    Why an animal-free burger? The burger is arguably America's most iconic food, and in recent times has also become one of the most controversial. In turns out, beef is one of the most resource-intensive, habitat-destroying, pollution-generating, contaminant-laden products on the planet. To create the 1 billion burgers eaten by Americans each year, countless tracts of land have been converted into corn and soybean fields to feed millions of cattle, who in turn generate staggering levels of greenhouse gases, require ridiculous amounts of water, and whose waste often contaminates the food supply with E. coli and other serious germs. It's not a pretty picture — and as the global demand for beef and other meat is expected to skyrocket in the near future, making beef more sustainable has become an international matter of urgency.

    So Brown and his new company, Impossible Foods, set out to do, well, the impossible — perfectly recreate beef using purely plant ingredients. Clearly this was no easy task; vegans and vegetarians have tried for years to replicate beef with plant-based patties, and the results have usually been less than impressive.

    That's because ground beef is a multi-layered matrix whose various muscles, tissues and proteins give beef complex flavors, textures and smells that can't be made using plants.

    Or so we thought.

    Deep in their Bay Area headquarters, Impossible Foods worked industriously to measure, analyze and extract components of plants they believed could replicate those found inside beef. It was a super-ambitious job, and they aimed for total perfection: every aspect of beef, from its lush reddish-pink hues to the intoxicating sizzle and aromas it emanates on the grill to the perfect char and juiciness of a medium-rare burger; everything had to be reverse-engineered using plants.

    They labored on this groundbreaking process for years, rarely telling the outside world about their work. Then, in 2014, they offered the public a tantalizing first glimpse at their prototype plant-only burger, aptly christened The Impossible Burger, and it looked... pretty darn good.

    Next, they invited the Wall Street Journal for a rare tour of their Redwood, CA research facility, which revealed the inner workings of their Willy Wonka-esque lab as white-coated workers weighed and analyzed burger samples or tossed bales of leafy vegetables into giant metal vats. But the marquee moment came when Dr. Brown revealed their holiest discovery: making plants bleed. That is, they'd isolated a molecule (known as \"heme\") that gives red meat its characteristic taste and color, and discovered it could also be found in certain plants' roots systems. This supreme revelation along with amazing images of plants leaking red pools of blood proceeded to blow the internet's mind, and the video became a viral sensation.

    And they weren't done making headlines. In the summer of 2015 it was reported that none other than Google had attempted a buy-out of Impossible Foods with an offer in the neighborhood of $200 to $300 million, but were ultimately rebuffed, reportedly because that sum just didn't impress the startup.

    Impossible shocked everyone again when, last fall, they raised an incredible $108 million in a single investment round from a circle of heavy-hitters including Bill Gates, Li Ka-Shing and Khosla Ventures. The news seemed to surprise even startup-seasoned Silicon Valley and sent the tech media abuzz with speculation. It was now obvious Impossible Foods wasn't working on any old veggie burger; this company was serious about innovating meat, and their product just might be the first plant-based burger with a real shot at usurping cows.

    And now, beginning this summer, the world will finally get a chance to find out. This spring, they announced the Impossible Burger would be launching in a select group of restaurants in several cities starting in July. The news came amid a dazzling marketing campaign where they unveiled the finished Impossible Burger — a product of several years of intense research and development — to a bevy of some of the most influential people in the food world, and the results have been astonishing.

    Justin Sterling of Food and Wine Magazine, who tasted the Impossible Burger at a special cooking demo, proclaimed the burger was \"a revolutionary new product\" that is \"far more complex and sophisticated than any existing non-animal patty\", while Bon Appetit's Christine Chaey enthused that the burger \"was everything I'd expect one to be: dense, chewy, salty, and satisfyingly fatty\" and that did \"a shockingly good job of convincing my brain (it was) in fact, meat.\" Meanwhile, world-famous chef and renowned carnivore David Chang had this to offer on Instagram:

    \"Today I tasted the future and it was vegan: this burger was juicy/bloody and had real texture like beef. But more delicious and way better for the planet. I can't really comprehend its impact quite yet...but I think it might change the whole game\"

    So how did Impossible do the impossible and turn plants into meat? That, it appears, might have to remain a guarded secret, but you may be surprised to learn the burger is made of some highly un-carnivorous ingredients like potato protein, grains, coconut oil, and even honeydew melon, as well as that special \"heme\". Best of all, the burgers require only a fraction of the land, water and energy that conventional beef burgers use, and is naturally free of the common germs and contaminants found inside the latter.

    With these luminous endorsements and a growing populace of meat-eaters eager to adopt more sustainable options, the potential for Impossible's product launch are huge.

    And the advent of a plant-based burger could have a major cultural significance as well. For the first time in human history, we've succeeded in making a complex meat product every bit as good as the conventional kind without relying on animals to grow it. In the same way the automobile liberated us from the inefficiency and restraints of driving horses and ushered in a new era of global transportation, animal-free meat could similarly grant us untold freedom to make meat products better than they've ever been before: in taste, nutritional quality, safety, and economic productivity. The innovation of meat might represent our greatest leap forward to a more sustainable food system, while enhancing our enjoyment of meat in ways we never previously imagined.

    Today's conventional meat industry is a massive, trillion-dollar business that stretches around the globe. But because of its shocking recklessness towards the environment, human health, and many other issues, it is also incredibly ripe for disruption. If Impossible Food's plant-only burger tastes and performs nearly anywhere as good as claimed, this startup is well-positioned to launch a brand new meat revolution, and if that's the case, consider the Impossible Burger the opening shot.

    Note: Rival startup Beyond Meat recently launched their own \"bleeding\" plant burger in Whole Foods stores last month. There have not been many definitive reviews yet, so it remains to be seen if it can fully compete with Impossible's innovation.

    (Original article from Janay Laing on Medium)",
    author_id: 8)

  # https://medium.com/mel-magazine/every-cut-of-steak-ranked-by-how-un-healthy-they-are-513a46d96000
  Post.create!(title: "Every Cut of Steak, Ranked by How (Un)Healthy They Are",
    body: "We've already written about how the meat industry is ruining steak by engineering larger cows. \"We're eating meat that has steroids in it,\" Jean-Claude Setin, master butcher and owner of Le French Butcher in L.A. told us earlier this year. \"We're eating meat that has appetite enhancers in it. We're eating meat that has sugar in it.\"

    Ugh.

    Still, even among the worryingly delicious selection of genetically mutated, 'roided-out cow meat out there, there are certain cuts of steak that are healthier and leaner than others. The problem is that most of these leaner cuts are, sadly, less tasty, and therefore, less likely to appear on a restaurant's menu. There's also the fact that, according to dietitian Sarah Mirkin, meat isn't a particularly healthy option to begin with. \"Personally I don't consider red meat to be healthy,\" says Mirkin. \"I recommend limiting it to once per week. Studies suggest that having red meat more often than this can substantially decrease one's lifespan.\"

    That said, we have a job to do, and that job is to rank cuts of steak by which one is less likely to cause Type 2 diabetes (and a laundry list of other diseases caused by eating too much fat).

    One more note before we dive in: You may notice that the first five cuts of steak listed below rarely show up on a restaurant's menu. Frankly, I'd never even heard of the first three cuts, because while they may be the leanest, they're also, taste-wise, likely to turn you into a vegetarian sooner than you can say bovine spongiform encephalopathy. Anyway, here we go...


    1. Sirloin Tip Side Steak: \"Sirloin tip side steak is the leanest choice,\" says Mirkin. She's right: This cut is one of the few on the list that could be considered \"extra lean\" by the USDA's standard (5 grams of total fat and 2 grams of saturated fat), according to the Mayo Clinic. The sirloin tip side steak is taken from the rump and hind legs: \"The muscles in this area are used for movement, so the beef is leaner and less tender,\" reports Beef. It's What's For Dinner.

    2. Eye of Round Steak: Another extra lean cut of steak, this is also taken from the rump and hind legs of a cow, but it's considered even tougher and less juicy. \"Eye of round is one of the few unredeemable cuts of meat; think tough and tasteless,\" writes Lynne Rossetto Kasper for The Splendid Table. According to Livestrong, the best way to prepare this otherwise shitty cut of beef is to pan-fry it or braise it so that you can retain some semblance of tenderness.

    3. Top and Bottom Round Steak (tied): Also considered extra lean by USDA standards, these two cuts of steak are the ones that are usually cut up and served in cubes. But while these cuts of steak both come from the back end of the cow, there are some differences. \"The top round is very lean but tends to be more tender than the bottom round, and is often cut into steaks (which are sometimes labeled \"London broil\"),\" reports The Oregonian.

    5. Top Sirloin: The last lean cut of steak on this list (by USDA standards, clocking in at anywhere between 3 to 5 grams of fat) is the perfect balance between healthy, moderately priced and tender enough to not feel like a piece of rubber. \"Gleaned from the loin section of the beast, this cut of steak offers up good flavor and moderately tender meat at a budget-friendly price,\" reports Bodybuilding.com. Mirkin tells me that she recommends choosing meat cuts that say \"sirloin\" or \"round\" and trimming all the visible fat.

    6. Filet Mignon: French for \"tender fillet,\" this most expensive cut of steak is cut from the tenderloin portion of the cow, a slither of flesh between the ribs and the rear end. But although it has a fairly high amount of saturated fat (6 grams in a 3-ounce piece), it's also high in protein (23 grams). \"Women need 45 grams of protein a day and men need 55 grams, so having filet mignon would get you about halfway there,\" Connie Diekman, a registered dietitian in St. Louis and past-president of the American Academy of Nutrition and Dietetics, told Healthy Eating.

    7. Skirt and Flank Steak (tied): Regularly mistaken for one another because of their similarly long and flat shape, these two cuts of meat are known more for their flavor than their tenderness. The skirt steak (8 grams of fat) is the slightly healthier option of the two, and is cut from the plate of a beef animal (aka just below the ribs) and has a more intense beef flavor than flank steak. \"It does contain more tough muscles than flank steak, though, so should only be cooked to rare or medium rare for the most tender texture,\" writes Christine Gallary for the The Kitchn. Flank steak (10 grams of fat), which is cut from the flank area (aka right below the short loin), is slightly thicker and wider than skirt steak. It's also the type of beef you usually encounter in fajitas and is often used in Asian cuisines.

    9. Porterhouse and T-bone Steak (tied): Both of these boney, taste-bud-roller-coaster rides are cut from a mix of both the short loin and the tenderloin. In the case of a Porterhouse, the steaks are cut from the rear end of the short loin, and therefore, include more tenderloin (filet). T-bone steaks, on the other hand, are cut from the front of the short loin and include less tenderloin. Technically the Porterhouse has less fat (16.4 grams) than the T-bone (25.6 grams), making it the healthier option of the two. But most experts can't agree on how much tenderloin is needed to differentiate a Porterhouse from a T-bone steak. According to the Department of Agriculture's Institutional Meat Purchase Specifications, \"The tenderloin of a Porterhouse must be 'at least 1.25 inches thick at its widest, while that of a T-bone must be at least 0.5 inches.\" However, some steaks with a larger tenderloin are still referred to as the \"King of the T-Bone\" by some.

    11. Ribeye Steak: Taken straight from the rib section, this indelible half fat, half protein cut of steak has 10 grams more fat than the T-bone steak and 3 grams less protein, making it the least healthy cut on this list. But according to Livestrong, if you broil your ribeye steak, the fat content will drip away. \"If you fry your steak, it will retain more fat than if you broil it,\" reports Livestrong. Cooking your rib eye steak well-done also will help relieve some of its fat content. But let's be real, the ribeye's increased fat content is precisely why this hunk of meat is so damn tasty, and if you cook your steak well done, well, you're a monster. So for the love of God, if you're going to risk your life by eating ribeye, don't scorch it in the process.

    (Original article from Andrew Fiouzi on Medium)",
    author_id: 4)

  # https://medium.com/the-year-of-the-looking-glass/the-secret-of-the-chicken-and-the-egg-206b7f1ce83b
  Post.create!(title: "The Secret of the Chicken and the Egg",
    body: "It would have been a completely unremarkable, certainly unmemorable Safeway grocery store run if not for the book that caught my eye on the way to the checkout aisle.

    This was two, maybe three years ago, and yet I still remember this book and its cover.

    Of course, I was instantly wary. The faux wax seal, the quill-pen script, the ancient parchment paper aglow with some kind of magical beams—it wore the sheepskin of a Dan Brown mega-thriller, except it unapologetically declared itself to be truth. Get whatever you want. Discover the secret to life, the book jacket proclaimed.

    The promises were too grand, the scent of scam too strong to ignore. Clearly, there wasn't some abracadabra shortcut, some kernel of wisdom wrapped in gold foil and tucked away in a dusty safe somewhere, \"the culmination of centuries of great thinkers, scientists, artists and philosophers,\" passed discretely from generation to generation...

    ...was there?

    Curiosity kills the cat, and that day it made a chump out of me. I tossed the book into my shopping cart and headed for the checkout line.

    At a conference last week about marketplaces, Gagan Biyani shared some pearls of insight from his experiences at Udemy and Lyft. He spoke of the classic chicken and the egg problem. If you're a seller (a purveyor of some mighty fine pastries, perhaps), you'll want to bring your goods to a market where there will be lots of baked-good aficionados. If you're looking to throw a pastry party, you'll want to go somewhere with a handsome selection of croissants and eclairs.

    What this boils down to is that if you've got eggs, it's easy to get chickens. If you've got chickens, it's easy to get eggs. Customers beget sellers. Sellers beget customers. There's even an economic term for this: the virtuous cycle.

    But what happens if you have no eggs and no chickens?

    I've often felt that if things were fair, then the ease or reward of any particular endeavor should be proportional to how valuable or good it is. But this is the opposite of how many things function. For instance:

    In physics: the law of inertia states that the innate force of matter... endeavors to preserve its present state, whether it be of rest or of moving uniformly forward in a straight line. (Wikipedia)

    In finance: it's easier to create more wealth when you already have wealth.

    In the office: you are more likely to receive confidence-boosting signals (compliments and promotions and the like) if you already project confidence.

    In lifestyles: destructive habits are more difficult to break than to fall into. It is harder for a smoker to say no to an offered cigarette than a non-smoker. Somebody who came from an abusive family is more likely to fall into another abusive relationship. Recovering alcoholics relapse when things are stressful, which only creates more stress.

    In relationships: the more adamantly two people disagree, the harder it is for them to earn each other's trust and resolve the disagreement.

    \"Fairness is a concept for children,\" Candace Bushnell was once quoted as saying. (Her book Sex and the City sparked a cultural phenomenon with a hit show and two movies, but she herself earned very little from those successes.)

    There is no such thing as fair or unfair. There is only how the world works.

    Do you want to know what The Secret is?

    It's simultaneously both accurate and disappointing.

    If you think positively — if you truly, honestly believe that you can attain or achieve something — then you will achieve it.

    I don't think most great thinkers, scientists, artists and philosophers would disagree with that. They probably thought positively and believed they could do what they set out to do.

    But what the book left out is the hard part.

    How do you get the egg or the chicken in the first place?

    How can you fundamentally change the way you think?

    One great line from Gagan Biyani's talk last week has stayed with me: faking the chicken. It means doing whatever it takes to get the chicken in place so that you can start reaping the benefit of eggs.

    Using his example, if you're building a marketplace, even if you have no buyers, incentivize sellers to come on board. Maybe pay them directly. Once the sellers are there, you can leverage them to attract buyers.

    Or, if you're lacking confidence, fake it until you make it. Act as if you have conviction in what you're saying even if the entire neighborhood's butterfly population has taken up residence in your stomach.

    Or, if something seems out of your capabilities, surround yourself with people that have done it before. Take inspiration from those who make it look possible, and maybe even easy. Trick yourself into thinking you already have the chicken.

    At the end of the day, that's life — the constant wrestling with and pushing of the self. The cycle of striving for better and better cycles, so that we can achieve something of meaning in an unfair world.

    Compared to the original Secret, it's not as enticing of a promise.

    But then again, it seems just a little more real.

    (Original article from Julie Zhuo on Medium)",
    author_id: 7)
end
 