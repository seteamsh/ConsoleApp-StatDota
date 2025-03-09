import Darwin
var favorites = [Player]()
func getDataFromUser(_ text: String) -> String {
    print(text)
    let action = readLine()
    guard let action = action else { return "Неизвестная команда" }
    return action
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
    case "1": addFavorite(player: foundPlayer!)
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

@main
struct Main {
    static func main() throws {
        while true {
            print("Добро пожаловать в StatDota")
            print("")
            print("1. Поиск игрока по ID")
            print("2. Сохраненные игроки")
            print("3. Выход")
            let action = getDataFromUser("Выберите команду:")
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
