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
  demoUser = User.create!(name: "Guest User", email: "guest@demo.com", password: "watpassword")
  user1 = User.create!(name: "Rachel Roth", email: "raven@azarath.io", password: "nevermore")
  user2 = User.create!(name: "Lissa Dragomir", email: "spirit@vacademy.edu", password: "element")
  user3 = User.create!(name: "Draco Malfoy", email: "ferret@slytherin.io", password: "myfatherwillhearaboutthis")
  user4 = User.create!(name: "Zoey Redbird", email: "nyx_night@hon.edu", password: "chosen")
  user5 = User.create!(name: "Viviene De G", email: "creator@mediumrare.com", password: "mediumrare")
  user6 = User.create!(name: "Kakashi Hatake", email: "sensei7@konoha.org", password: "copyninja")

  # Posts
  post1 = Post.create!(title: "Team Building", 
    body:"        One morning, about a week after Bingley's engagement with Jane had been formed, as he and the females of the family were sitting together in the dining-room, their attention was suddenly drawn to the window, by the sound of a carriage; and they perceived a chaise and four driving up the lawn. It was too early in the morning for visitors, and besides, the equipage did not answer to that of any of their neighbours. The horses were post; and neither the carriage, nor the livery of the servant who preceded it, were familiar to them.
    
        As it was certain, however, that somebody was coming, Bingley instantly prevailed on Miss Bennet to avoid the confinement of such an intrusion, and walk away with him into the shrubbery. They both set off, and the conjectures of the remaining three continued, though with little satisfaction, till the door was thrown open and their visitor entered. It was Lady Catherine de Bourgh.
        
        They were of course all intending to be surprised; but their astonishment was beyond their expectation; and on the part of Mrs. Bennet and Kitty, though she was perfectly unknown to them, even inferior to what Elizabeth felt.
        
        She entered the room with an air more than usually ungracious, made no other reply to Elizabeth's salutation than a slight inclination of the head, and sat down without saying a word. Elizabeth had mentioned her name to her mother on her ladyship's entrance, though no request of introduction had been made.
    
        -Jane Austen, Pride and Prejudice",
    author_id: 7)
  post2 = Post.create!(title: "Ten Years on the Sea is Ten Years Too Long",
    body: "While yet I speak the winged galley flies,
And lo! the Siren shores like mists arise.
Sunk were at once the winds; the air above,
And waves below, at once forgot to move;
Some demon calm’d the air and smooth’d the deep,
Hush’d the loud winds, and charm’d the waves to sleep.
Now every sail we furl, each oar we ply;
Lash’d by the stroke, the frothy waters fly.
The ductile wax with busy hands I mould,
And cleft in fragments, and the fragments roll’d;
The aerial region now grew warm with day,
The wax dissolved beneath the burning ray;
Then every ear I barr’d against the strain,
And from access of frenzy lock’d the brain.
Now round the masts my mates the fetters roll’d,
And bound me limb by limb with fold on fold.
Then bending to the stroke, the active train
Plunge all at once their oars, and cleave the main.
\"While to the shore the rapid vessel flies,
Our swift approach the Siren choir descries;
Celestial music warbles from their tongue,
And thus the sweet deluders tune the song:
\"‘Oh stay, O pride of Greece! Ulysses, stay!
Oh cease thy course, and listen to our lay!
Blest is the man ordain’d our voice to hear,
The song instructs the soul, and charms the ear.
Approach! thy soul shall into raptures rise!
Approach! and learn new wisdom from the wise!
We know whate’er the kings of mighty name
Achieved at Ilion in the field of fame;
Whate’er beneath the sun’s bright journey lies.
Oh stay, and learn new wisdom from the wise!

        -Homer, The Odyssey",
    author_id: 5)
  post3 = Post.create!(title: "Why You Shouldn't Drink Wine",
    body: "       \"Fortunato,\" I said. \"Put your hand against the wall. You must feel how the water runs over it. Once more I ask you, please, will you not go back? No? If not, then I must leave you. But first I must do everything I can for you.\"
        \"But...But the Amontillado?\"
        \"Ah, yes, yes indeed; the Amontillado.\"
        As I spoke these words I began to search among the bones. Throwing them to one side I found the stones which earlier I had taken down from the wall. Quickly I began to build the wall again, covering the hole where Fortunato stood trembling.
        \"Montresor! What are you doing!?\"
        I continued working. I could hear him pulling at the chain, shaking it wildly. Only a few stones remained to put in their place.
        \"Montresor! Ha-ha. This is a very good joke, indeed. Many times will we laugh about it — ha-ha — as we drink our wine together — ha-ha.\"
        \"Of course. As we drink the Amontillado.\"
        \"But is it not late? Should we not be going back? They will be expecting us. Let us go.\"
        \"Yes. Let us go.\"
        As I said this I lifted the last stone from the ground.
        \"Montresor! For the love of God!!\"
        \"Yes. For the love of God!\"
        I heard no answer. \"Fortunato!\" I cried. \"Fortunato.\" I heard only a soft, low sound, a half-cry of fear. My heart grew sick; it must have been the cold. I hurried to force the last stone into its position. And I put the old bones again in a pile against the wall. For half a century now no human hand has touched them. May he rest in peace!
    
        -Edgar Allan Poe, The Cask of Amontillado",
    author_id: 2)
  post4 = Post.create!(title: "I am Macbeth",
    body: "Is this a dagger which I see before me,
The handle toward my hand? Come, let me clutch thee!
I have thee not, and yet I see thee still.
Art thou not, fatal vision, sensible
To feeling as to sight? or art thou but
A dagger of the mind, a false creation
Proceeding from the heat-oppressèd brain?
I see thee yet, in form as palpable
As this which now I draw.
Thou marshall'st me the way that I was going,
And such an instrument I was to use.
Mine eyes are made the fools o' th' other senses,
Or else worth all the rest. I see thee still,
And on thy blade and dudgeon gouts of blood,
Which was not so before. There's no such thing.
It is the bloody business which informs
Thus to mine eyes. Now o'er the one half-world
Nature seems dead, and wicked dreams abuse
The curtained sleep. Witchcraft celebrates
Pale Hecate's offerings; and withered murder,
Alarumed by his sentinel, the wolf,
Whose howl 's his watch, thus with his stealthy pace,
With Tarquin's ravishing strides, towards his design
Moves like a ghost. Thou sure and firm-set earth,
Hear not my steps which way they walk, for fear
Thy very stones prate of my whereabout
And take the present horror from the time,
Which now suits with it. Whiles I threat, he lives;
Words to the heat of deeds too cold breath gives.
I go, and it is done. The bell invites me.
Hear it not, Duncan, for it is a knell
That summons thee to heaven, or to hell.

        -William Shakespeare, Macbeth",
    author_id: 4)
  post5 = Post.create!(title: "A Dramatic Monologue from Juliet Capulet",
    body: "       Gallop apace, you fiery-footed steeds, towards Phoebus' lodging! Such a wagoner as Phaeton would whip you to the west and bring in cloudy night immediately. Spread thy close curtain, love-performing night, that runaway's eyes may wink, and Romeo leap to these arms untalked of and unseen. Lovers can see to do their amorous rites by their own beauties; or, if love be blind, it best agrees with night.
    
        Come, civil night, thou sober-suited matron, all in black, and learn me how to lose a winning match, played for a pair of stainless maidenhoods. Hood my unmanned blood, bating in my cheeks, with thy black mantle till strange love grow bold, think true love acted simple modesty.
        
        Come, night; come, Romeo; come, thou day in night; for thou wilt lie upon the wings of night whiter than new snow upon a raven's back. Come, gentle night; come, loving, black-browed night; give me my Romeo; and, when he shall die, take him and cut him out in little stars, and he will make the face of heaven so fine that all the world will be in love with night and pay no worship to the garish sun.
        
        O, I have bought the mansion of a love, but not possessed it. So tedious is this day as is the night before some festival to an impatient child that hath new robes and may not wear them.
    
        -William Shakespeare, Romeo and Juliet",
    author_id: 1)
  post6 = Post.create!(title: "Raven Resurrected",
    body: "       Once upon a midnight dreary, while I pondered, weak and weary, over many a quaint and curious volume of forgotten lore — while I nodded, nearly napping, suddenly there came a tapping, as of some one gently rapping, rapping at my chamber door.
    
        \"'Tis some visitor,\" I muttered, \"tapping at my chamber door — only this and nothing more.\"
        
        Then this ebony bird beguiling my sad fancy into smiling, by the grave and stern decorum of the countenance it wore, \"Though thy crest be shorn and shaven, thou,\" I said, \"art sure no craven, ghastly grim and ancient Raven wandering from the Nightly shore — tell me what thy lordly name is on the Night’s Plutonian shore!\"
        
        Quoth the Raven \"Nevermore.\"
    
        -Edgar Allan Poe, The Raven",
    author_id: 3)
  post7 = Post.create!(title: "The Tale of Aeneas",
    body: "       I sing of warfare and a man at war. From the sea-coast of Troy in early days he came to Italy by destiny, to our Lavinian western shore, a fugitive, this captain, buffeted cruelly on land as on the sea by blows from power of the air - behind them baleful Juno in her sleepless rage. And cruel losses were his lot in war, till he could found a city and bring hime his gods to Latium, land of the Latin race, the Alban lords and the high walls of Rome.
    
        Tell me the causes now, O Muse, how galled in her divine pride, and how sore at heart from her old wound, the queen of gods compelled him - a man apart, devoted to his mission - to undergo so many perilous days and enter on so many trials. Can anger black as this prey on the minds of heaven?

        -Virgil, The Aeneid",
    author_id: 6)

  post8 = Post.create!(title: "Zoey Redbird's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:5)
  post9 = Post.create!(title: "Rachel Roth's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:2)
  post10 = Post.create!(title: "Viviene De G's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:6)
  post11 = Post.create!(title: "Lissa Dragomir's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:3)
  post12 = Post.create!(title: "Guest User's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:1)
  post13 = Post.create!(title: "Kakashi Hatake's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:7)
  post14 = Post.create!(title: "Draco Malfoy's Lorem Ipsum Post",
    body: "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus a pellentesque sit amet porttitor eget. Auctor elit sed vulputate mi sit amet mauris commodo. Pharetra magna ac placerat vestibulum lectus. Nisi porta lorem mollis aliquam. Pulvinar sapien et ligula ullamcorper. Tempus quam pellentesque nec nam aliquam. Neque viverra justo nec ultrices. Nisl condimentum id venenatis a condimentum vitae sapien. Eu volutpat odio facilisis mauris sit. Ac auctor augue mauris augue neque gravida in.

        Metus dictum at tempor commodo ullamcorper. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Felis eget nunc lobortis mattis aliquam. Non pulvinar neque laoreet suspendisse interdum consectetur. Praesent elementum facilisis leo vel fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. At quis risus sed vulputate. Vel eros donec ac odio tempor orci. A lacus vestibulum sed arcu non odio euismod lacinia. Nam libero justo laoreet sit amet cursus sit. Duis ut diam quam nulla porttitor massa id neque aliquam. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Ut eu sem integer vitae. Facilisis leo vel fringilla est. Est sit amet facilisis magna etiam tempor orci eu lobortis.

        Fames ac turpis egestas maecenas pharetra convallis posuere. Ullamcorper eget nulla facilisi etiam. In massa tempor nec feugiat nisl. Sit amet volutpat consequat mauris nunc congue. Tortor posuere ac ut consequat semper viverra nam libero. Ullamcorper dignissim cras tincidunt lobortis feugiat. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Eget nunc scelerisque viverra mauris in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Egestas congue quisque egestas diam in arcu cursus euismod quis. Nec ultrices dui sapien eget. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Nibh sit amet commodo nulla facilisi. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Etiam dignissim diam quis enim lobortis.",
    author_id:4)
end
 