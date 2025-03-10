class SearchPlayer: Actions {
    override func run() {
        searchID()
    }
    func searchID() {
        var foundPlayer: Player?
        let id = getDataFromUser("Введите ID игрока:")
        foundPlayer = findPlayerByID(Int(id) ?? 0)
        print(foundPlayer)
        
        print("1. Добавить в избранное")
        print("2. Поиск игрока по ID")
        print("3. Выход в главное меню")
        let action = getDataFromUser("Выберите команду:")
        switch action {
        //case "1": addFavorite(player: foundPlayer!)
        case "2": searchID()
        case "3": break
        default: print("Ввели неверную команду, повторите снова")
        }
    }
    func findPlayerByID(_ id: Int) -> Player? {
        for playerArr in players {
            for player in playerArr {
                if player.id == id {
                    return player
                }
            }
        }
        return nil
    }
}
