class Favorites: Actions {
    
    func addFavorite(player: Player) {
        for favorite in favorites {
            if favorite.id == player.id {
                print("Игрок с ID \(player.id) уже есть в избранном")
                return
            }
        }
        favorites.append(player)
        print("Игрок с ID \(player.id) добавлен в избранное")
    }
    
    func showFavorites() {
        for player in favorites {
            print("===================================")
            print("ID: \(player.id)")
            print("Name: \(player.name)")
            print("Wins: \(player.wins), Defeats: \(player.defeats)")
            print("First hero: \(player.firstPerson)")
            print("Second hero: \(player.secondPerson)")
            print("Third hero: \(player.thirdPerson)")
            print("===================================")
        }
    }
}
