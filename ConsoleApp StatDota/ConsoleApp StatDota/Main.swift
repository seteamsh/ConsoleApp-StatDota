import Darwin
var favorites = [Player]()
func addFavorite(player: Player) {
    favorites.append(player)
    print("Игрок с ID \(player.id) добавлен в избранное")
}
func searchID() {
        var foundPlayer: Player?
        var action: String
        print("Введите ID игрока:")
        let id = readLine() ?? ""
        foundPlayer = findPlayerByID(Int(id) ?? 0)
        print(foundPlayer)
        
        print("1. Добавить в избранное")
        print("2. Выход в главное меню")
        action = readLine() ?? ""
        switch action {
        case "1": addFavorite(player: foundPlayer!)
        case "2": break
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

func showFavorites() {
    print("\(favorites)")
}


@main
struct Main {
    static func main() throws {
        while true {
            print("Добро пожаловать в StatDota")
            print("---------------------------")
            print("Выберите команду")
            print("")
            print("1. Поиск игрока по ID")
            print("2. Сохраненные игроки")
            print("3. Выход")
            let action = readLine() ?? ""
            switch action {
            case "1":
                searchID()
            case "2":
                showFavorites()
            case "3":
                exit(0)
            default :
                print("Неверная команда")
            }
        }
    }
}
