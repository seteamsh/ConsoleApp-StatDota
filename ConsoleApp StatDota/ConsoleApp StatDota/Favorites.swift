class AddFavorites: Actions {
    func run(player: Player) {
        for favorite in Application.favorites {
            if favorite.id == player.id {
                print("Игрок с ID \(player.id) уже есть в избранном")
                return
            }
        }
        Application.favorites.append(player)
        print("Игрок с ID \(player.id) добавлен в избранное")
    }
    
}
class ShowFavorites {
    func run() {
        for player in Application.favorites {
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
