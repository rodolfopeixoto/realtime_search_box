# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create([

   {title: 'Guide: What Is Knowledge Management', content: 'From Cave Paintings to Cloud Computing Knowledge Bases Does your company still use paper handbooks, PDFs, text documents or emails to store and share the knowledge that is reused within the company and presented to newly hired employees? You might find yourself astonished when you realize how backward and inefficient these technologies might be and more importantly how this invisible lack of appropriate knowledge management might be the main reason your company is slowly losing the race with your competition.'},
   {title: '8 Most Common Mistakes to Avoid When Building External Knowledge Base', content: 'Building a knowledge base is not as easy as clicking couple of buttons and implementing it into your existing website. Actually, building a knowledge base is like building a completely new website, except it is integrated into your existing one. Look at it this way: It is a section of your website where your customers will be heading every time they need some information about your service or when they have an issue to be resolved. If you think that'},
   {title: 'Cheat Sheet: Cutting Down Customer Support Requests With Knowledge Base', content: ' Hey, if you have plenty of customer support requests and you want to cut them down, no worries about that! You can always hide your contact us button and make your customers regret they ever tried to find it, right? Anyway, let’s see this: Did you hear about reactive and proactive customer service? The first one is all about answering the customer support requests and the second one (proactive) is all about reaching out first to your customers even '},
   {title: '7 Shiny Gold Benefits of Having Internal Knowledge Base', content: 'Do you have a shared company drive where you guys keep all the data you use when doing your tasks? Do you use emails and Google Documents to share your knowledge? Or, do you use Dropbox to do this? Seriously, you guys need (to discover) the knowledge base. If you are a midsized company and you still haven’t built your own internal knowledge base then, you have a serious problem. Here’s why: According to McKinsey’s research, the average interaction worker'},
   {title: 'How do I cancel my subscription', content: 'Learn how to view active, expiring, and past subscriptions, change subscription preferences, and cancel subscriptions and memberships.'},
   {title: 'Dramatically Cutting Down Support Requests Within Your SaaS App: The Story of Travis, The Hero From EventGeek', content: 'Ladies and Gentlemen ….. I’d like to introduce to you a hero today. Yes, he might not have saved a kitten from the tree, and may not be chasing down criminals down the tree, but Travis Aaberg is a hero in the customer support field. As EventGeek started to scale up, they decided it was time to introduce a knowledge base into their support process. Travis, a community manager, and hero to us, has set up a process within EventGeek'}
])

History.create([
   { search: "Guide: What Is Knowledge Management", count_search: 1, article: true, ip_user: "127.0.0.0" },
   { search: "8 Most Common Mistakes to Avoid When Building External Knowledge Base", count_search: 1, article: true, ip_user: "127.0.0.0" },
   { search: "Cheat Sheet: Cutting Down Customer Support Requests With Knowledge Base", count_search: 1, article: true, ip_user: "127.0.0.0" },
   { search: "7 Shiny Gold Benefits of Having Internal Knowledge Base", count_search: 1, article: true, ip_user: "127.0.0.0" },
   { search: "How do I cancel my subscription", count_search: 1, article: true, ip_user: "127.0.0.0" }
])