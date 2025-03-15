class SearchPlayer: Actions {
    func searchID() {
        var foundPlayer: Player?
        let favorites = Favorites()
        let id = Actions.getDataFromUser("Введите ID игрока:")
        foundPlayer = findPlayerByID(Int(id) ?? 0)
        print(foundPlayer)
        
        print("1. Добавить в избранное")
        print("2. Поиск игрока по ID")
        print("3. Выход в главное меню")
        let action = Actions.getDataFromUser("Выберите команду:")
        switch action {
        case "1": favorites.addFavorite(player: foundPlayer!)
        case "2": searchID()
        case "3": return
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
