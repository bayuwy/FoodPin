//
//  RestaurantViewModel.swift
//  FoodPin
//
//  Created by Bayu Yasaputro on 22/10/22.
//

import UIKit

protocol RestaurantViewModelDelegate: NSObjectProtocol {
    func restaurantsDidUpdate()
}

class RestaurantsViewModel {
    weak var delegate: RestaurantViewModelDelegate?
    init(delegate: RestaurantViewModelDelegate) {
        self.delegate = delegate
    }
    
    
    private var restaurants: [Restaurant] = [
        Restaurant(name: "Cafe Deadend", category: "Coffee & Tea Shop", address: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", thumb: UIImage(named: "cafedeadend")!),
        Restaurant(name: "Homei", category: "Cafe", address: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing but fantastic! This place is warm and cozy. We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas.", thumb: UIImage(named: "homei")!),
        Restaurant(name: "Teakha", category: "Tea House", address: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "354-243523", description: "Take a moment to stop and smell tealeaves! We are about the community, our environment, and all things created by the warmth of our hands. We open at 11 AM, and close at 7 PM. At teakha, we sell only the best single-origin teas sourced by our sister company Plantation directly from small tea plantations. The teas are then either cooked to perfection with milk in a pot or brewed.", thumb: UIImage(named: "teakha")!),
        Restaurant(name: "Cafe loisl", category: "Austrian / Causual Drink", address: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "453-333423", description: "A great cafe in Austrian style. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. We also serve breakfast and light lunch. Come over to enjoy the elegant ambience and quality coffee.", thumb: UIImage(named: "cafeloisl")!),
        Restaurant(name: "Petite Oyster", category: "French", address: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "983-284334", description: "An upscale dining venue, features premium and seasonal imported oysters, and delicate yet creative modern European cuisines. Its oyster bar displays a full array of freshest oysters imported from all over the world including France, Australia, USA and Japan.", thumb: UIImage(named: "petiteoyster")!),
        Restaurant(name: "For Kee Restaurant", category: "Bakery", address: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", phone: "232-434222", description: "A great local cafe for breakfast and lunch! Located in a quiet area in Sheung Wan, we offer pork chop buns, HK french toast, and many more. We open from 7 AM to 4:30 PM.", thumb: UIImage(named: "forkee")!),
        Restaurant(name: "Po's Atelier", category: "Bakery", address: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", phone: "234-834322", description: "A boutique bakery focusing on artisan breads and pastries paired with inspiration from Japan and Scandinavia. We are crazy about bread and excited to share our artisan bakes with you. We open at 10 every morning, and close at 7 PM.", thumb: UIImage(named: "posatelier")!),
        Restaurant(name: "Bourke Street Backery", category: "Chocolate", address: "633 Bourke St Sydney New South Wales 2010 Surry Hills", phone: "982-434343", description: "We make everything by hand with the best possible ingredients, from organic sourdoughs to pastries and cakes. A combination of great produce, good strong coffee, artisanal skill and hard work creates the honest, soulful, delectable bites that have made Bourke Street Bakery famous. Visit us at one of our many Sydney locations!", thumb: UIImage(named: "bourkestreetbakery")!),
        Restaurant(name: "Haigh's Chocolate", category: "Cafe", address: "412-414 George St Sydney New South Wales", phone: "734-232323", description: "Haigh's Chocolates is Australia's oldest family owned chocolate maker. We have been making chocolate in Adelaide, South Australia since 1915 and we are committed to the art of premium chocolate making from the cocoa bean. Our chocolates are always presented to perfection in our own retail stores. Visit any one of them and you'll find chocolate tasting, gift wrapping and personalised attention are all part of the service.", thumb: UIImage(named: "haigh")!),
        Restaurant(name: "Palomino Espresso", category: "American / Seafood", address: "Shop 1 61 York St Sydney New South Wales", phone: "872-734343", description: "We offer an assortment of on-site baked goods and sandwiches. This place has always been a favourite among office workers. We open at 7 every morning including Sunday, and close at 4 PM. Come over, have a coffee and enjoy a chit-chat with our baristas.", thumb: UIImage(named: "palomino")!),
        Restaurant(name: "Upstate", category: "American", address: "95 1st Ave New York, NY 10003", phone: "343-233221", description: "The absolute best seafood place in town. The atmosphere here creates a very homey feeling. We open at 5 PM, and close at 10:30 PM.", thumb: UIImage(named: "upstate")!),
        Restaurant(name: "Traif", category: "American", address: "229 S 4th St Brooklyn, NY 11211", phone: "985-723623", description: "A young crowd populates this pork-focused American eatery in an older Williamsburg neighborhood. We open at 6PM, and close at 11 PM. If you enjoy a shared small plates dinner experience, come over and have a try.", thumb: UIImage(named: "traif")!),
        Restaurant(name: "Graham Avenue Meats", category: "Breakfast & Brunch", address: "445 Graham Ave Brooklyn, NY 11211", phone: "455-232345", description: "Classic Italian deli & butcher draws patrons with meat-filled submarine sandwiches. We use the freshest meats and veggies to create the perfect panini for you. We look forward to seeing you!", thumb: UIImage(named: "graham")!),
        Restaurant(name: "Waffle & Wolf", category: "Coffee & Tea", address: "413 Graham Ave Brooklyn, NY 11211", phone: "434-232322", description: "Small shop, some seating, definitely something different! We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of waffles with choices of sweet & savory fillings. If you are gluten free and craving waffles, this is the place to go.", thumb: UIImage(named: "waffleandwolf")!),
        Restaurant(name: "Five Leaves", category: "Coffee & Tea", address: "18 Bedford Ave Brooklyn, NY 11222", phone: "343-234553", description: " Great food, cocktails, ambiance, service. Nothing beats having a warm dinner and a whiskey. We open at 8 every morning, and close at 1 AM. The ricotta pancakes are something you must try.", thumb: UIImage(named: "fiveleaves")!),
        Restaurant(name: "Cafe Lore", category: "Latin American", address: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phone: "342-455433", description: "Good place, great environment and amazing food! We open at 10 every morning except Sunday, and close at 9 PM. Give us a visit! Enjoy mushroom raviolis, pumpkin raviolis, meat raviolis with sausage and peppers, pork cutlets, eggplant parmesan, and salad.", thumb: UIImage(named: "cafelore")!),
        Restaurant(name: "Confessional", category: "Spanish", address: "308 E 6th St New York, NY 10003", phone: "643-332323", description: "Most delicious cocktail you would ever try! Our menu includes a wide range of high quality internationally inspired dishes, vegetarian options, and local cuisine. We open at 10 AM, and close at 10 PM. We welcome you into our place to enjoy a meal with your friends.", thumb: UIImage(named: "confessional")!),
        Restaurant(name: "Barrafina", category: "Spanish", address: "54 Frith Street London W1D 4SL United Kingdom", phone: "542-343434", description: "a collection of authentic Spanish Tapas bars in Central London! We have an open kitchen, a beautiful marble-topped bar where guests can sit and watch the chefs at work and stylish red leather stools. Lunch starts at 1 PM. Dinners starts 5:30 PM.", thumb: UIImage(named: "barrafina")!),
        Restaurant(name: "Donostia", category: "Spanish", address: "10 Seymour Place London W1H 7ND United Kingdom", phone: "722-232323", description: "Very good basque food, creative dishes with terrific flavors! Donostia is a high end tapas restaurant with a friendly relaxed ambiance. Come over to enjoy awesome tapas!", thumb: UIImage(named: "donostia")!),
        Restaurant(name: "Royal Oak", category: "British", address: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "343-988834", description: "Specialise in great pub food. Established in 1872, we have local and world lagers, craft beer and a selection of wine and spirits for people to enjoy. Don't forget to try our range of Young's Ales and Fish and Chips.", thumb: UIImage(named: "royaloak")!),
        Restaurant(name: "CASK Pub and Kitchen", category: "Thai", address: "22 Charlwood Street London SW1V 2DY Pimlico", phone: "432-344050", description: "With kitchen serving gourmet burgers. We offer food every day of the week, Monday through to Sunday. Join us every Sunday from 4:30 ??? 7:30pm for live acoustic music!", thumb: UIImage(named: "cask")!)
    ]
    
    // MARK: - Helpers
    var numberOfRestaurants: Int {
        return restaurants.count
    }
    
    func restaurantThumb(at index: Int) -> UIImage {
        return restaurants[index].thumb
    }
    
    func restaurantName(at index: Int) -> String {
        return restaurants[index].name
    }
    
    func restaurantAddress(at index: Int) -> String {
        return restaurants[index].address
    }
    
    func restaurantCategory(at index: Int) -> String {
        return restaurants[index].category
    }
    
    func restaurantRating(at index: Int) -> Rating? {
        return restaurants[index].rating
    }
    
    func addRestaurant(name: String, category: String, address: String, phone: String, description: String, thumb: UIImage) {
        let restaurant = Restaurant(name: name, category: category, address: address, phone: phone, description: description, thumb: thumb)
        restaurants.insert(restaurant, at: 0)
        delegate?.restaurantsDidUpdate()
    }
    
    func rateRestaurant(at index: Int, rating: Rating) {
        restaurants[index].rating = rating
        delegate?.restaurantsDidUpdate()
    }
}
