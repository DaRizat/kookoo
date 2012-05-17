User.destroy_all
Message.destroy_all
Subscription.destroy_all

jack = User.create({
  :full_name              => "Jack Bishop",
  :email                  => "jack@synctree.com",
  :location               => "Burbank, CA",
  :bio                    => "Senior Ruby on Rails and Node.js engineer",
  :password               => "$ynctr33",
  :password_confirmation  => "$ynctr33"
})

chris = User.create({
  :full_name              => "Christopher White",
  :email                  => "chris@synctree.com",
  :location               => "Venice, CA",
  :bio                    => "Senior engineer, Product Manager and Presentation Master",
  :password               => "$ynctr33",
  :password_confirmation  => "$ynctr33"
})

blake = User.create({
  :full_name              => "Blake Petatan",
  :email                  => "blake@synctree.com",
  :location               => "Santa Monica, CA",
  :bio                    => "Synctree Co-Founder and All-Around Programming Guru",
  :password               => "$ynctr33",
  :password_confirmation  => "$ynctr33"
})

masahji = User.create({
  :full_name              => "Masahji Stewart",
  :email                  => "masahji@synctree.com",
  :location               => "Pasadena, CA",
  :bio                    => "Synctree Co-Founder and Master of All Ceremonies",
  :password               => "$ynctr33",
  :password_confirmation  => "$ynctr33"
})

khalfani = User.create({
  :full_name              => "Khalfani Rushiddin",
  :email                  => "khalfani@synctree.com",
  :location               => "Los Angeles, CA",
  :bio                    => "Resident Project Management and Agile/Scrum Expert",
  :password               => "$ynctr33",
  :password_confirmation  => "$ynctr33"
})

Subscription.create({:subscriber_id => jack.id, :subscribee_id => chris.id})
Subscription.create({:subscriber_id => jack.id, :subscribee_id => blake.id})
Subscription.create({:subscriber_id => chris.id, :subscribee_id => blake.id})
Subscription.create({:subscriber_id => chris.id, :subscribee_id => masahji.id})
Subscription.create({:subscriber_id => blake.id, :subscribee_id => masahji.id})
Subscription.create({:subscriber_id => blake.id, :subscribee_id => khalfani.id})
Subscription.create({:subscriber_id => masahji.id, :subscribee_id => khalfani.id})
Subscription.create({:subscriber_id => masahji.id, :subscribee_id => jack.id})
Subscription.create({:subscriber_id => khalfani.id, :subscribee_id => jack.id})
Subscription.create({:subscriber_id => khalfani.id, :subscribee_id => chris.id})

Message.create({
  :user_id  => jack.id,
  :body => "This is my message to the world!"
})

Message.create({
  :user_id  => jack.id,
  :body => "Everyone, theres a party at my house right now! LET'S DO IT!!"
})

Message.create({
  :user_id  => jack.id,
  :body => "Party was amazing. Thanks to everyone who showed up!"
})

Message.create({
  :user_id  => chris.id,
  :body => "Let's learn how to program with Ruby on Rails."
})

Message.create({
  :user_id  => chris.id,
  :body => "He who gets pulled behind the curtain gets to taste the fruit."
})

Message.create({
  :user_id  => chris.id,
  :body => "Swoopty websites can be built in a flash with Rails"
})

Message.create({
  :user_id  => blake.id,
  :body => "Blake Money in the house, KooKoo put your hands up!"
})

Message.create({
  :user_id  => blake.id,
  :body => "Lets get busy with Ruby on Rails."
})

Message.create({
  :user_id  => blake.id,
  :body => "Let's go Lakers!!"
})

Message.create({
  :user_id  => masahji.id,
  :body => "Synctree Superbox 2013. Believe it."
})

Message.create({
  :user_id  => masahji.id,
  :body => "Ruby on Rails allows you to pivot quickly and with agility. This is good news."
})

Message.create({
  :user_id  => masahji.id,
  :body => "No sleep for the weary..."
})

Message.create({
  :user_id  => khalfani.id,
  :body => "Our 11am call is upon us."
})

Message.create({
  :user_id  => khalfani.id,
  :body => "I'm recording this conversation."
})

Message.create({
  :user_id  => khalfani.id,
  :body => "I appreciate you."
})
