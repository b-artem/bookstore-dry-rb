# frozen_string_literal: true

unless User.exists?
  User.create!(
    [
      { email: 'adm@adm.ua', password: 'password', reset_password_token: nil, reset_password_sent_at: nil,
        remember_created_at: nil, sign_in_count: 1, current_sign_in_at: '2017-12-01 14:29:44',
        last_sign_in_at: '2017-12-01 14:29:44', current_sign_in_ip: '127.0.0.1', last_sign_in_ip: '127.0.0.1',
        role: 'admin', omniauth_provider: nil, omniauth_uid: nil, image_url: nil,
        confirmation_token: 'xgtTrnfheZUgxBw9uDJR', confirmed_at: '2017-12-01 14:30:41',
        confirmation_sent_at: '2017-12-01 14:29:42', unconfirmed_email: nil },
      { email: 'user@user.ua', password: 'password', reset_password_token: nil, reset_password_sent_at: nil,
        remember_created_at: nil, sign_in_count: 1, current_sign_in_at: '2017-12-01 14:31:52',
        last_sign_in_at: '2017-12-01 14:31:52', current_sign_in_ip: '127.0.0.1', last_sign_in_ip: '127.0.0.1',
        role: 'user', omniauth_provider: nil, omniauth_uid: nil, image_url: nil,
        confirmation_token: '_Cq3j1qFN_v4KjwpUjvS', confirmed_at: '2017-12-01 14:32:06',
        confirmation_sent_at: '2017-12-01 14:31:50', unconfirmed_email: nil }
    ]
  )
end

unless ShippingMethod.exists?
  ShippingMethod.create!(
    [
      { name: 'Delivery Next Day!', days_min: 3, days_max: 7, price: 5.0 },
      { name: 'Pick Up In-Store', days_min: 5, days_max: 20, price: 10.0 },
      { name: 'Expressit', days_min: 2, days_max: 3, price: 15.0 }
    ]
  )
end

unless Category.exists?
  Category.create!(
    [
      { name: 'Mobile development' },
      { name: 'Photo' },
      { name: 'Web design' },
      { name: 'Web development' }
    ]
  )
end

unless Coupon.exists?
  Coupon.create!(
    [
      { code: '12345678', discount: '20.0', valid_until: '2017-12-31' }
    ]
  )
end

unless Author.exists?
  Author.create!(
    [
      { first_name: 'Ed', last_name: 'Burnette', description: 'Ed Burnette is a software industry veteran with more than 30 years of experience as a programmer, author, and analyst. He is a founding member and senior researcher at the SAS Advanced Server Research group, and is the creator of Planet Android (www.planetandroid.com). Ed has authored numerous technical articles and books, including Google Web Toolkit: Taking the Pain out of Ajax and Eclipse IDE Pocket Guide. In his copious spare time, you can often find him playing video games with his two sons at their home in central North Carolina.' },
      { first_name: 'Chris', last_name: 'Griffith', description: 'Chris Griffith is the User Experience Lead at a home automation and security company and is also an instructor at the University of California, San Diego Extension, teaching mobile application development. He is also an Adobe Community Professional specializing in PhoneGap/Cordova and Experience Design. Chris is regularly invited to speak at conferences such as Fluent, Adobe MAX and ngConf. He has developed several mobile applications, a variety of code-hinters and ConfiGAP for PhoneGap Build. In addition, he has served as a technical reviewer for several publications and written for uxmag.com. In his spare time, Chris spends time with his family, sea kayaking, hiking, and drinking craft beer with friends. You can follow him on Twitter @chrisgriffith or at chrisgriffith.wordpress.com.' },
      { first_name: 'Dan', last_name: 'Hermes', description: "Dan Hermes is a Xamarin and Microsoft MVP, software consultant, IBM Champion, and founder of Lexicon Systems, an award-winning Xamarin and .NET consulting firm. Mr. Hermes helps developers create great mobile apps and helps businesses develop a winning mobile strategy. His firm's recent Xamarin projects include a cross-platform app for Thermo Fisher Scientific which won a W3, a Davey award, and was a finalist for a Xammy award. Mr. Hermes' clientele includes dozens of software-building firms such as Fidelity Investments, EDS, and Computerworld Magazine. He speaks at conferences and teaches software development at colleges, developer user groups, and corporate training centers. A contemporary Renaissance man, Mr. Hermes is also active in the arts. He is a recognized composer, his classical crossover music having aired on National Public Radio (NPR). He is also an active artist, exhibiting his work internationally, and a founding director of Art Technology New England (ATNE).\r\n\r\nMr. Hermes is the author of a new book entitled Xamarin Mobile Application Development." },
      { first_name: 'Jakob', last_name: 'Iversen', description: 'Jakob Iversen, Ph.D. is Associate Professor of Information Systems, Chair of the Interactive Web Management Program, and Director of Information Technology Services at the University of Wisconsin Oshkosh College of Business. His current research interests include software process improvement, agile software development, e-collaboration, and mobile development. Dr. Iversen teaches and consults on web development, mobile development, technology innovation, information systems management, strategy, and software development processes.' },
      { first_name: 'Michael', last_name: 'Eierman', description: "Michael Eierman, Ph.D is a Professor of Information Systems and Chair of the Information Systems Department at the University of Wisconsin Oshkosh College of Business. Dr. Eierman has worked in the information systems field for nearly 30 years as a programmer, analyst, and consultant, but primarily as a teacher. From the very first class taken in college\r\nat the suggestion of an advisor, information systems have been his passion. His research has taken many directions over his years as a professor but is currently focused on the impact of collaborative and mobile technology. Dr. Eierman is also co-owner and manager of Ei-Sor Development, LLC—a provider of Android and iOS apps designed for the outdoorsman." },
      { first_name: 'John', last_name: 'Horton', description: 'John Horton is a technology enthusiast based in UK. When he is not writing apps, books, or blog articles for Game Code School, he can usually be found playing computer games or indulging in a Nerf war.' },
      { first_name: 'Jon', last_name: 'Duckett', description: 'Jon Duckett has been helping companies create innovative digital solutions for over 15 years, designing and delivering web and mobile projects for small businesses and tech startups through to global brands like Diesel, Philips, Nike, Wrangler, and Xerox.' },
      { first_name: 'Sam', last_name: 'Ruby', description: "Sam Ruby has co-chaired the W3C HTML Working Group and has made significant contributions to many of the Apache Software Foundation's open source software projects. He is a Senior Technical Staff Member in the Emerging Technologies Group of IBM." },
      { first_name: 'David', last_name: 'Copeland', description: "David Bryant Copeland is a programmer and author. He wrote The Senior Software Engineer and Build Awesome Command-Line Applications in Ruby 2, and has been a professional programmer since 1995. He's worked at LivingSocial and Opower, and is the director of engineering at fashion start-up Stitch Fix." },
      { first_name: 'Dave', last_name: 'Thomas', description: 'Dave Thomas is a programmer who likes to evangelize cool stuff. He cowrote "The Pragmatic Programmer" and was one of the creators of the Manifesto for Agile Software Development. His book "Programming Ruby" introduced the Ruby language to the world, and "Agile Web Development with Rails" helped kickstart the Rails revolution.' },
      { first_name: 'Michael', last_name: 'Hartl', description: 'Michael Hartl is founder of the educational website LearnEnough.com and author of the Ruby on Rails Tutorial, the leading introduction to web development with Rails. His prior experience includes writing and developing RailsSpace, an extremely obsolete Rails tutorial book, and developing Insoshi, a once-popular and now-obsolete social networking platform in Ruby on Rails. In 2011, Michael received a Ruby Hero Award for his contributions to the Ruby community. He is a graduate of Harvard College, has a Ph.D. in Physics from Caltech, and is an alumnus of the Y Combinator entrepreneur program.' },
      { first_name: 'Joel', last_name: 'Sartore', description: "JOEL SARTORE is a photographer, speaker, author, teacher, and a 25-year contributor to National Geographic magazine as well as Audubon, Geo, Time, Life, Newsweek, and Sports Illustrated. He has written several books including National Geographic's Rare: Portraits of America's Endangered Species, Photographing Your Family, and Let's Be Reasonable, a collection of essays from the CBS Sunday Morning show. Sartore and his work have been the subjects of several national broadcasts, including the National Geographic Channel's Explorer, the NBC Nightly News, NPR's Weekend Edition, and an hour-long PBS documentary, At Close Range. He is also a contributor on the CBS Sunday Morning Show with Charles Osgood. " },
      { first_name: 'Peter', last_name: 'Stepan', description: 'Editor Peter Stepan (Icons of Photography) ' },
      { first_name: 'Sarah', last_name: 'Price', description: "During the early 1700s, the Preiss family arrived in America aboard an old sailing vessel called the Patience. The family left Europe, escaping Catholic persecution for their Anabaptist beliefs. Sarah Price comes from a long line of devout Mennonites, including numerous church leaders and ministers throughout the years. Her involvement with the Amish dates back to 1978. Her writing reflect accurate and authentic stories based upon her own experiences with several Amish communities. \r\n\r\nMs. Price has advanced degrees in Communication (MA), Marketing (MBA), and Educational Leadership (A.B.D.). Ms. Price was a former full-time college professor. After being diagnosed with breast cancer in 2013, she now writes full-time." }
    ]
  )
end

unless Book.exists?
  Book.create!(
    [
      { title: 'Mobile App Development with Ionic 2: Cross-Platform Apps with Ionic, Angular, and Cordova', description: "Learn how to build app store-ready hybrid apps with the Ionic 2, the framework built on top of Apache Cordova (formerly PhoneGap) and Angular. This practical guide shows you how to use Ionic’s tools and services to develop apps with HTML, CSS, and TypeScript, rather than rely on platform-specific solutions found in Android, iOS, and Windows Phone.\r\n\r\nAuthor Chris Griffith takes you step-by-step through Ionic’s powerful collection of UI components, and then helps you use it to build three cross-platform mobile apps. Whether you’re new to this framework or have been working with Ionic 1, this book is ideal for beginning, intermediate, and advanced web developers.\r\n\r\nUnderstand what a hybrid mobile app is, and what comprises a basic Ionic application\r\nLearn how Ionic leverages Apache Cordova, Angular, and TypeScript to create native mobile applications\r\nCreate a Firebase-enabled to-do application that stores data across multiple clients\r\nBuild a tab-based National Park explorer app with Google Map integration\r\nDevelop a weather app with the Darksky weather API and Google’s GeoCode API\r\nDebug and test your app to resolve issues that arise during development\r\nWalk through steps for deploying your app to native app stores\r\nLearn how Ionic can be used to create Progressive Web Apps", price: '49.99', publication_year: 2017, dimensions: "H: 9.1'' x W: 6.9'' x D: 0.5'' ", materials: 'Paperback' },
      { title: 'Xamarin Mobile Application Development: Cross-Platform C# and Xamarin.Forms Fundamentals', description: "Xamarin Mobile Application Development is a hands-on Xamarin.Forms primer and a cross-platform reference for building native Android, iOS, and Windows Phone apps using C# and .NET. This book explains how to use Xamarin.Forms, Xamarin.Android, and Xamarin.iOS to build business apps for your customers and consumer apps for Google Play and the iTunes App Store.\r\n\r\nLearn how to leverage Xamarin.Forms for cross-platform development using the most common UI pages, layouts, views, controls, and design patterns. Combine these with platform-specific UI to craft a visually stunning and highly interactive mobile user experience.\r\n\r\nUse Xamarin.Forms to data bind your UI to both data models and to view models for a Model-View-ViewModel (MVVM) implementation. Use this book to answer the important question: Is Xamarin.Forms right for my project?\r\n\r\nPlatform-specific UI is a key concept in cross-platform development, and Xamarin.Android and Xamarin.iOS are the foundation of the Xamarin platform. Xamarin Mobile Application Development will cover how to build an Android app using Xamarin.Android and an iOS app using Xamarin.iOS while sharing a core code library.\r\n\r\nSQLite is the database-of-choice for many Xamarin developers. This book will explain local data access techniques using SQLite.NET and ADO.NET. Build a mobile data access layer (DAL) using SQLite and weigh your options for web services and enterprise cloud data solutions.\r\n\r\nThis book will show how organize your Xamarin code into a professional-grade application architecture. Explore solution-building techniques from starter-to-enterprise to help you decouple your functional layers, manage your platform-specific code, and share your cross-platform classes for code reuse, testability, and maintainability.\r\n\r\nAlso included are 250+ screenshots on iOS, Android, and Windows Phone and 200+ C# code examples with downloadable C# and XAML versions available from Apress.com.\r\n\r\nThis comprehensive recipe and reference book addresses one of the most important and vexing problems in the software industry today: How do we effectively design and develop cross-platform mobile applications?", price: '49.99', publication_year: 2015, dimensions: 'H: 10.0" x W: 7.0" x D: 1.0"', materials: 'Paperback' },
      { title: 'Learning Mobile App Development: A Hands-on Guide to Building Apps with iOS and Android', description: "Now, one book can help you master mobile app development with both market-leading platforms: Apple’s iOS and Google’s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both—and gain a deeper understanding of the issues associated with developing mobile apps.\r\n \r\nYou’ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you’re new to iOS, you’ll also find an easy, practical introduction to Objective-C, Apple’s native language.\r\n \r\nAll source code for this book, organized by chapter, is available at https://github.com/LearningMobile/BookApps\r\n \r\nCoverage includes\r\nUnderstanding the unique design challenges associated with mobile apps\r\nSetting up your Android and iOS development environments\r\nMastering Eclipse development tools for Android and Xcode 5 tools for iOS\r\nDesigning interfaces and navigation schemes that leverage each platform’s power\r\nReliably integrating persistent data into your apps\r\nUsing lists (Android) or tables (iOS) to effectively present data to users\r\nCapturing device location, displaying it, and using it in your apps\r\nAccessing hardware devices and sensors\r\nPublishing custom apps internally within an organization\r\nMonetizing your apps on Apple’s AppStore or the Google Play marketplace, as well as other ways of profiting from app development, such as consulting and developer jobs", price: '75.0', publication_year: 2013, dimensions: 'H: 9.0 x W: 7.0 x D: 0.9', materials: 'Paperback' },
      { title: "Hello, Android: Introducing Google's Mobile Development Platform", description: "Google Android dominates the mobile market, and by targeting Android, your apps can run on most of the phones and tablets in the world. This new fourth edition of the #1 book for learning Android covers all modern Android versions from Android 4.1 through Android 5.0. Freshly added material covers new Android features such as Fragments and Google Play Services. Android is a platform you can't afford not to learn, and this book gets you started.\r\n\r\nAndroid is a software toolkit for mobile phones and tablets, created by Google. It's inside more than a billion devices, making Android the number one platform for application developers. Your own app could be running on all those devices!\r\n\r\nGetting started developing with Android is easy. You don't even need access to an Android phone, just a computer where you can install the Android SDK and the emulator that comes with it. Within minutes, Hello, Android gets you creating your first working application: Android's version of \"Hello, World.\" From there, you'll build up a more substantial example: an Ultimate Tic-Tac-Toe game. By gradually adding features to the game, you'll learn about many aspects of Android programming, such as creating animated user interfaces, playing music and sound effects, building location-based services (including GPS and cell-tower triangulation), and accessing web services. You'll also learn how to publish your applications to the Google Play Store.\r\n\r\nThis fourth edition of the bestselling Android classic has been revised for Android 4.1-4.3 (Jelly Bean), 4.4 (KitKat), and Android 5.0 (Lollipop). Topics have been streamlined and simplified based on reader feedback, and every page and example has been reviewed and updated for compatibility with the latest versions of Android.\r\n\r\nIf you'd rather be coding than reading about coding, this book is for you.", price: '36.0', publication_year: 2015, dimensions: 'H: 9.2” x W: 7.5” x D: 0.5”', materials: 'Paperback' },
      { title: 'Learning Java by Building Android Games - Explore Java Through Mobile Game Development', description: "Android is the fastest growing operating system (OS) with one of the largest installed bases of any mobile OS. Android uses one of the most popular programming languages, Java, as the primary language for building apps of all types. So, you should first obtain a solid grasp of the Java language and its foundation APIs to improve the chances of succeeding as an Android app developer.\r\n\r\nThis book will show you how to get your Android development environment set up and you will soon have your first working game. The difficulty level grows steadily with the introduction of key Java topics such as loops, methods, and OOP. You'll then use them in the development of games. You will learn how to build a math test game, a Simon-like memory game, a retro pong-style game, and for the grand finale, a Snake-style, retro arcade game with real Google Play leaderboards and achievements. The book has a hands-on approach and is packed with screenshots.", price: '31.99', publication_year: 2015, dimensions: 'H: 9.2" x W: 7.5" x D: 0.9"', materials: 'Paperback' },
      { title: 'Building E-commerce sites with VirtueMart Cookbook', description: "This brilliantly accessible book is the perfect introduction to using all the key features of VirtueMart to set up and install a fully-functioning e-commerce store. From the basics to customization, it's simply indispensable.\r\n\r\nOverview\r\n\r\nGet to grips with VirtueMart and build an attractive store powered by Joomla!\r\nIncrease the visibility of your store with SEO and product descriptions\r\nKeep your store profitable by configuring tax, shipping and orders", price: '49.99', publication_year: 2013, dimensions: 'H: 9.2" x W: 7.5" x D: 0.7"', materials: 'Paperback' },
      { title: 'Android Programming for Beginners', description: "Kick-start your Android programming career, or just have fun publishing apps to the Google Play marketplace\r\nA first-principles introduction to Java, via Android, which means you'll be able to start building your own applications from scratch\r\nLearn by example and build three real-world apps and over 40 mini apps throughout the book", price: '44.99', publication_year: 2015, dimensions: 'H: 9.2" x W: 7.5" x D: 1.6"', materials: 'Paperback' },
      { title: 'JavaScript and JQuery: Interactive Front-End Web Development', description: 'In JavaScript & jQuery renowned author Jon Duckett discards the traditional programming book template and approaches writing code in a more relevant, less intimidating way. Full-color and packed with instructional graphics and photos, his books have gained a loyal following by illustrating programming in a way both instructive for newcomers and invaluable for seasoned coders.', price: '25.99', publication_year: 2014, dimensions: 'H: 9.3" x W: 7.5" x D: 1.6"', materials: 'Hardcover' },
      { title: 'Web Design with HTML, CSS, JavaScript and jQuery Set', description: "This two-book set combines the titles HTML & CSS: Designing and Building Web Sites and JavaScript & jQuery: Interactive Front-End Development. Together these two books form an ideal platform for anyone who wants to master HTML and CSS before stepping up to JavaScript and jQuery.\r\n\r\nHTML & CSS covers structure, text, links, images, tables, forms, useful options, adding style with CSS, fonts, colors, thinking in boxes, styling lists and tables, layouts, grids, and even SEO, Google analytics, ftp, and HTML5. JavaScript & jQuery offers an excellent combined introduction to these two technologies using a clear and simple visual approach using diagrams, infographics, and photographs.", price: '47.15', publication_year: 2014, dimensions: 'H: 9.0" x W: 7.1" x D: 2.8"', materials: 'Hardcover' },
      { title: 'HTML and CSS: Design and Build Websites', description: 'Every day, more and more people want to learn some HTML and CSS. Joining the professional web designers and programmers are new audiences who need to know a little bit of code at work (update a content management system or e-commerce store) and those who want to make their personal blogs more attractive. Many books teaching HTML and CSS are dry and only written for those who want to become programmers, which is why this book takes an entirely new approach.', price: '17.32', publication_year: 2011, dimensions: 'H: 9.0" x W: 7.1" x D: 1.1"', materials: 'Paperback' },
      { title: 'Agile Web Development with Rails 5.1', description: "Learn Rails the way the Rails core team recommends it, along with the tens of thousands of developers who have used this broad, far-reaching tutorial and reference. If you're new to Rails, you'll get step-by-step guidance. If you're an experienced developer, get the comprehensive, insider information you need for the latest version of Ruby on Rails. The new edition of this award-winning classic is completely updated for Rails 5.1 and Ruby 2.4, with information on system testing, Webpack, and advanced JavaScript.\r\n\r\nRuby on Rails helps you produce high-quality, beautiful-looking web applications quickly---you concentrate on creating the application, and Rails takes care of the details. Rails 5.1 brings many improvements, and this edition is updated to cover the new features and changes in best practices.", price: '57.95', publication_year: 2017, dimensions: 'H: 9.2" x W: 7.5 x D: 1.4"', materials: 'Paperback' },
      { title: 'Rails, Angular, Postgres, and Bootstrap: Powerful, Effective, Efficient, Full-Stack Web Development', description: "Achieve awesome user experiences and performance with simple, maintainable code! Embrace the full stack of web development, from styling with Bootstrap, building an interactive user interface with Angular 4, to storing data quickly and reliably in PostgreSQL. With this fully revised new edition, take a holistic view of full-stack development to create usable, high-performing applications with Rails 5.1.\r\n\r\nRails is a great tool for building web applications, but it's not the best at everything. Embrace the features built into your database. Learn how to use front-end frameworks. Seize the power of the application stack through Angular 4, Bootstrap, and PostgreSQL. When used together, these powerful and easy-to-use tools will open you to a new world of possibilities. This second edition is updated to cover Angular - a completely reworked front-end framework - and dives into new Postgres 9.6 features such as UPSERT. Also new is Webpack coverage, to develop the front-end code for your Rails application.", price: '29.07', publication_year: 2017, dimensions: 'H: 9.2" x W: 7.5" x D: 0.7"', materials: 'Paperback' },
      { title: "National Geographic The Photo Ark: One Man's Quest to Document the World's Animals", description: "The lush and unique photography in this book represents National Geographic's Photo Ark, a major initiative and lifelong project by photographer Joel Sartore to make portraits of the world's animals—especially those that are endangered. His powerful message, conveyed with humor, compassion, and art: to know these animals is to save them. \r\n\r\nSartore is circling the globe, visiting zoos and wildlife rescue centers to create studio portraits of 12,000 species, with an emphasis on those facing extinction. Wiht a goal of photographing every animal in captivity in the world, he has photographed more than 6,000 already and now, thanks to a multi-year partnership with National Geographic, he may reach his goal. This book showcases his animal portraits: from tiny to mammoth, from the Florida grasshopper sparrow to the greater one-horned rhinoceros. Paired with the eloquent prose of veteran wildlife writer Douglas Chadwick, and an inspiring foreword from Harrison Ford, this book presents a thought-provoking argument for saving all the species of our planet.", price: '35.0', publication_year: 2017, dimensions: 'H: 10.5" x W: 10.2" x D: 1.3"', materials: 'Hardcover' },
      { title: 'The Faded Photo', description: "Some things should be kept private. Frances Snyder can never quite get her mother’s voice out of her head—how to be the perfect wife, the perfect mother. Frances’s home life is demanding, and while she’s busy seeing to everyone else’s needs, Frances doesn’t have the luxury of spare time.\r\n\r\nSo when she is diagnosed with breast cancer, she thinks that she can handle it on her own. Dealing with endless tests, brutal chemotherapy, and the looming specter of surgery, Frances chooses to face cancer on her own terms: alone. That is, until she finally understands that unexpected friendship—and unconditional love—can offer hope in the darkest hours.\r\n\r\nWith tenderness, grace, and flashes of humor, bestselling author Sarah Price draws upon her own experience as a breast cancer survivor to create a story about one woman’s determined and solitary journey into the unknown—in hopes that she’ll find her way back home.", price: '12.95', publication_year: 2017, dimensions: 'H: 8.2" x W: 5.5" x D: 1.0"', materials: 'Paperback' },
      { title: 'Photos that Changed the World', description: 'Now available in an updated and revised edition, Photos that Changed the World gathers together images of pivotal moments in world history in one stunning volume. In lavish two-page spreads, this book presents nearly one hundred of history’s most memorable photographs — from the Wright Brothers’ first flight to the bombing of Pearl Harbor, from Martin Luther King’s "I Have a Dream" speech to Nelson Mandela’s release from prison, and from the inauguration of President Barack Obama to the Syrian refugee crisis. The volume features pictures from photography masters such as Lewis Hine, Dorothea Lange, Yousuf Karsh, Diane Arbus, and James Nachtwey, as well as iconic images from lesser-known and unknown photojournalists. Photos that Changed the World has been updated to include indelible images of the most significant recent events. Engaging essays accompany each photograph and tell the story behind each image.', price: '19.95', publication_year: 2016, dimensions: 'H: 9.5" x W: 7.8" x D: 0.8"', materials: 'Paperback' }
    ]
  )

  # HABTM ASSOCIATIONS
  Book.find(1).categories << Category.find(1)
  Book.find(3).categories << Category.find(1)
  Book.find(4).categories << Category.find(1)
  Book.find(2).categories << Category.find(1)
  Book.find(6).categories << Category.find(4)
  Book.find(7).categories << Category.find(1)
  Book.find(5).categories << Category.find(1)
  Book.find(8).categories << Category.find(4)
  Book.find(9).categories << Category.find(3)
  Book.find(10).categories << Category.find(4)
  Book.find(10).categories << Category.find(3)
  Book.find(11).categories << Category.find(4)
  Book.find(12).categories << Category.find(4)
  Book.find(13).categories << Category.find(2)
  Book.find(14).categories << Category.find(2)
  Book.find(15).categories << Category.find(2)

  # HABTM ASSOCIATIONS
  Author.find(1).books << Book.find(1)
  Author.find(2).books << Book.find(2)
  Author.find(3).books << Book.find(3)
  Author.find(4).books << Book.find(4)
  Author.find(5).books << Book.find(4)
  Author.find(6).books << Book.find(5)
  Author.find(6).books << Book.find(6)
  Author.find(6).books << Book.find(7)
  Author.find(7).books << Book.find(8)
  Author.find(7).books << Book.find(9)
  Author.find(7).books << Book.find(10)
  Author.find(8).books << Book.find(11)
  Author.find(9).books << Book.find(11)
  Author.find(9).books << Book.find(12)
  Author.find(10).books << Book.find(11)
  Author.find(12).books << Book.find(13)
  Author.find(13).books << Book.find(15)
  Author.find(14).books << Book.find(14)

  IMAGES_PATH = File.expand_path('app/assets/images/seeds/covers', Rails.root)

  Book.find(1).images.attach(io: File.open("#{IMAGES_PATH}/hello_android.jpg" + ''), filename: 'hello_android.jpg')
  Book.find(2).images.attach(io: File.open("#{IMAGES_PATH}/mobile_app_dev.jpg" + ''), filename: 'mobile_app_dev.jpg')
  Book.find(3).images.attach(io: File.open("#{IMAGES_PATH}/xamarin.jpg" + ''), filename: 'xamarin.jpg')
  Book.find(4).images.attach(io: File.open("#{IMAGES_PATH}/learning_mobile_app.jpg" + ''),
                             filename: 'learning_mobile_app.jpg')
  Book.find(5).images.attach(io: File.open("#{IMAGES_PATH}/learning_java.jpg" + ''), filename: 'learning_java.jpg')
  Book.find(6).images.attach(io: File.open("#{IMAGES_PATH}/building_ecom.jpg" + ''), filename: 'building_ecom.jpg')
  Book.find(7).images.attach(io: File.open("#{IMAGES_PATH}/android_programming.jpg" + ''),
                             filename: 'android_programming.jpg')
  Book.find(8).images.attach(io: File.open("#{IMAGES_PATH}/javascript_jquery.jpg" + ''),
                             filename: 'javascript_jquery.jpg')
  Book.find(9).images.attach(io: File.open("#{IMAGES_PATH}/web_design_html.jpg" + ''),
                             filename: 'web_design_html.jpg')
  Book.find(10).images.attach(io: File.open("#{IMAGES_PATH}/html_css.jpg" + ''), filename: 'html_css.jpg')
  Book.find(11).images.attach(io: File.open("#{IMAGES_PATH}/agile1.jpg" + ''), filename: 'agile1.jpg')
  Book.find(11).images.attach(io: File.open("#{IMAGES_PATH}/agile2.jpg" + ''), filename: 'agile2.jpg')
  Book.find(11).images.attach(io: File.open("#{IMAGES_PATH}/agile3.jpg" + ''), filename: 'agile3.jpg')
  Book.find(11).images.attach(io: File.open("#{IMAGES_PATH}/agile4.jpg" + ''), filename: 'agile4.jpg')
  Book.find(12).images.attach(io: File.open("#{IMAGES_PATH}/rails_angular.jpg" + ''), filename: 'rails_angular.jpg')
  Book.find(13).images.attach(io: File.open("#{IMAGES_PATH}/photo_ark.jpg" + ''), filename: 'photo_ark.jpg')
  Book.find(14).images.attach(io: File.open("#{IMAGES_PATH}/faded.jpg" + ''), filename: 'faded.jpg')
  Book.find(15).images.attach(io: File.open("#{IMAGES_PATH}/photos_changed.jpg" + ''), filename: 'photos_changed.jpg')
end

unless Order.exists?
  Order.create!(
    [
      { number: 'R00000001', completed_at: '2017-09-24 08:03:00', state: 'delivered', user_id: 2, shipping_method_id: 3,
        use_billing_address_as_shipping: true, coupon_id: nil },
      { number: 'R00000002', completed_at: '2017-09-24 08:04:00', state: 'delivered', user_id: 2, shipping_method_id: 2,
        use_billing_address_as_shipping: true, coupon_id: nil },
      { number: 'R00000003', completed_at: nil, state: 'canceled', user_id: 2, shipping_method_id: nil,
        use_billing_address_as_shipping: false, coupon_id: nil }
    ]
  )
end

unless LineItem.exists?
  LineItem.create!(
    [
      { book_id: 11, cart_id: nil, quantity: 45, order_id: 1, price: '57.95' },
      { book_id: 9, cart_id: nil, quantity: 40, order_id: 1, price: '47.15' },
      { book_id: 7, cart_id: nil, quantity: 35, order_id: 1, price: '49.99' },
      { book_id: 15, cart_id: nil, quantity: 50, order_id: 2, price: '49.99' }
    ]
  )
end

unless Review.exists?
  Review.create!(
    [
      { title: 'New review', text: 'Very cool book', score: 5, status: 'approved', book_id: 11, user_id: 2 },
      { title: 'Review', text: 'Got 4 score', score: 4, status: 'approved', book_id: 11, user_id: 2 },
      { title: 'Not a very good', text: 'Not a good', score: 3, status: 'rejected', book_id: 11, user_id: 2 },
      { title: 'Nice book', text: 'Very nice book', score: 5, status: 'unprocessed', book_id: 11, user_id: 2 }
    ]
  )
end

unless Address.exists?
  Address.create!(
    [
      { type: 'ShippingAddress', first_name: 'Elon', last_name: 'Musk', address: 'Yavornitskogo avenue',
        city: 'Dnipro', zip: '49000', country: 'UA', phone: '+3564748974', user_id: 2, order_id: nil },
      { type: 'BillingAddress', first_name: 'Elon', last_name: 'Musk', address: 'New York',
        city: 'San Francisco', zip: '12345', country: 'US', phone: '+33333333', user_id: 2, order_id: nil },
      { type: 'ShippingAddress', first_name: 'Elon', last_name: 'Musk', address: 'Yavornitskogo avenue',
        city: 'Dnipro', zip: '49000', country: 'UA', phone: '+3564748974', user_id: 2, order_id: 1 },
      { type: 'BillingAddress', first_name: 'Elon', last_name: 'Musk', address: 'New York',
        city: 'San Francisco', zip: '12345', country: 'US', phone: '+33333333', user_id: 2, order_id: 1 },
      { type: 'ShippingAddress', first_name: 'Elon', last_name: 'Musk', address: 'Yavornitskogo avenue',
        city: 'Dnipro', zip: '49000', country: 'UA', phone: '+3564748974', user_id: 2, order_id: 2 },
      { type: 'BillingAddress', first_name: 'Elon', last_name: 'Musk', address: 'New York',
        city: 'San Francisco', zip: '12345', country: 'US', phone: '+33333333', user_id: 2, order_id: 2 },
      { type: 'ShippingAddress', first_name: 'Elon', last_name: 'Musk', address: 'Yavornitskogo avenue',
        city: 'Dnipro', zip: '49000', country: 'UA', phone: '+3564748974', user_id: 2, order_id: 3 },
      { type: 'BillingAddress', first_name: 'Elon', last_name: 'Musk', address: 'New York',
        city: 'San Francisco', zip: '12345', country: 'US', phone: '+33333333', user_id: 2, order_id: 3 }
    ]
  )
end
