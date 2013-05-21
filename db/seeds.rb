# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faq.create(
  question: "Can I sign up for any day?", 
  answer: "Absolutely! Any day that is open, up to six people."
)

Faq.create(
  question: "Do kids under 3 count?", 
  answer: "No, anyone under the age of 3 does not count towards the total " + 
    "number of folks we can have on a trip. (But please not 6 adults and 5 " + 
    "kids under 3, or something like that, it will be too crowded.)"
)

Faq.create(
  question: 'What if 2 people are already signed up for a day, can I ' + 
    'still sign up on that day as well?', 
  answer: 'Sure, up to a total of 6 people. ' + 
    'If you see someone you like has signed up and want to go out the same day, ' + 
    'great! Get a few of your friends and sign up together on the same day, whatever ' + 
    'works! If you see someone signed up that you don\'t like, sign up anyway and get ' + 
    'to know them better!' 
)

Faq.create(
  question: 'Does it cost anything?', 
  answer: 'No, we just want the pleasure of your company. If you won\'t be able ' + 
    'to sleep unless you contribute, by all means bring a dessert.'
)

Faq.create(
  question: 'What is a typical day on the boat like?', 
  answer: 'Saturdays are usually 11am until 5pm or so, but of course we will '+
    'work with your schedule. If you can\'t be there until 12pm, or need to ' + 
    'come in early, no problem. Sundays are typically 1pm until 6pm or so. ' + 
    '(We don\'t miss church!) We leave the dock, head out into the river, ' + 
    'and usually head out to the Island or a creek in the Bay, usually only ' + 
    'a 15 or 20 minute run. Then we anchor, swim (if you want), eat, and ' + 
    'generally have a great time!'
)

Faq.create(
  question: 'Is the boat safe?', 
  answer: 'Yes, we have all the required safety equipment, life preservers, ' + 
  'etc. It is a big enough boat to handle just about anything the bay can ' + 
  'dish out, except maybe a hurricane. If the water is rough, we stay inland ' + 
  'and still anchor, swim, eat, and generally have a great time! We want you ' + 
  'to have fun, so we won\'t risk a bad experience. You don\'t need to worry ' + 
  'about us plowing out in 6 ft seas.'
)

Faq.create(
  question: 'Do we have to wear life preservers?', 
  answer: 'We request anyone 8 or under wear a life preserver while on the ' + 
    'boat, regardless of whether they can swim or not.  But we would suggest ' + 
    'anyone who cannot swim wear one, even adults, but we don\'t require it. ' + 
    'If you jump in the water, and we hope you do, we ask that everyone take ' + 
    'a float, noodle, something. It just makes us feel better.'
)

Faq.create(
  question: 'Will we eat at some point?', 
  answer: 'Yes you will, so come hungry! We cook on the grill (Yes, we have a ' +
    'grill on the boat. Awesome, I know!) And we have healthy choices if you ' + 
    'are so inclined, or not so healthy if you lean that way. Hey, we don\'t judge!'
)

Faq.create(
  question: 'What is the catch?', 
  answer: 'Do we have to buy something or contribute to your “Save Everything ' + 
    'Fund”? Truth is that we don\'t want anything, you are not a captive ' + 
    'audience, and you will not have to endure any sales pitch. Here it is in a ' + 
    'nutshell- We have been tremendously blessed to have this boat. God has given ' + 
    'us the opportunity to do what we love- being on the water and sharing time ' + 
    'with folks. And we want to bless others the way He has blessed us, so it is ' + 
    'our way of sharing what we have. So come, enjoy it, don\'t worry about ' + 
    'anything, just relax and have a good time. And give to someone else when ' + 
    'you have the chance.'
)

Faq.create(
  question: 'What should I wear?', 
  answer: 'It\'s a boat, so assume at some point you might ' + 
    'get a little wet. Shorts, sunglasses, a hat if you like, sunscreen (We don\'t ' +
    'fool around with melanoma on our boat!) Definitely bring a swim suit if you like ' + 
    'to swim (Family friendly please!!) Boat shoes, tennis shoes, or flip flops- No ' + 
    'black soles shoes, boots, or dress shoes if you don\'t mind!'
)

Faq.create(
  question: 'Do I have to swim?', 
  answer: 'No, totally your call. Do whatever, or don\'t do whatever, you ' + 
    'like. It\'s a day for you to have fun!'
)

Faq.create(
  question: 'You seem normal when we see you around at family stuff, or at ' + 
    'church. Are you guys just fun, or a little crazy?', 
  answer: 'That is actually a good question. We are completely sane and you ' + 
    'are correct, I think, fun to be with. My wife Deena is more fun than me, ' +
    'as you probably know, but I can hold my own. So don\'t worry.' 
)

Faq.create( 
  question: 'How about if we don\'t know you that well?', 
  answer: 'That\'s ok, if you got invited to sign up on this website, then ' + 
    'you\'re in! (if you never met us, don\'t know who we are, and just ' + 
    'figured it was cool to sign up- Sorry. We are fun, not crazy. Please see ' + 
    'the last bullet point). We will have a great time getting to know each ' + 
    'other better!'
)

Faq.create(   
  question: 'Why did you name the boat “Perseverance”?',    
  answer: '3 reasons, really. First, it took 12 years to find that boat, and my poor wife ' + 
    'endured one-day trips to Erie, North Carolina, Boston, and other faraway places ' +
    'looking at boats. And we finally found it in Mamaroneck, NY, and to be quite ' + 
    'honest we never should have ended up with it.  It should have went to someone ' +
    'else with more money. But we were Blessed! Second, my wife is one of the ' + 
    'greatest gifts I have been given on this earth, and it is remarkable not only ' +
    'that we found each other, but that we made it through some very tough times to ' +
    'end up together. And it took God and some perseverance on both our parts to make ' + 
    'that happen. And Third, several years ago my only brother passed away from brain ' +
    'cancer at the age of 36. Both he, my parents, and my sisters showed tremendous ' + 
    'strength and courage through the darkest of times.  I think of this passage from ' +
    'the Bible, “But we also glory in our sufferings, because we know that suffering ' + 
    'produces perseverance;  perseverance, character; and character, hope”. (Romans ' +
    '5, 3-4). It is not if we have hard times, it is when. And if we persevere ' + 
    'through those hard times, God can bring good from all of it. I have seen it so ' + 
    'often in my own life. So the name of the boat is a reminder of the gifts we have ' + 
    'been given- time with family and friends that should never be taken for granted, ' + 
    'experiencing the beauty that still exists in this world like the sun glisten off '+ 
    'the waves, some really good conversations with people we might not have gotten '+ 
    'to share with otherwise, and the hope we have in a Savior that loves us- just as '+ 
    'we are.' 
)
