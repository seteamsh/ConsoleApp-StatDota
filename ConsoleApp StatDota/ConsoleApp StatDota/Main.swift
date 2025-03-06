import Darwin
var favorites = [Player]()
func addFavorite(player: Player) {
    favorites.append(player)
}
func searchID() {
    var foundPlayer: Player?
    print("Введите ID игрока:")
    let id = readLine() ?? ""
    foundPlayer = findPlayerByID(Int(id) ?? 0)
    print(foundPlayer)
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


@main
struct Main {
    static func main() throws {
        while true {
            print("Добро пожаловать в StatDota")
            print("Здесь вы сможете получить статистику по игрокам")
            print("-----------------------------------------------")
            print("Выберите команду, чтобы начать")
            print("")
            print("1. Поиск игрока по ID")
            print("2. Сохраненные игроки")
            print("3. Выход")
            let action = readLine() ?? ""
            switch action {
            case "1":
                searchID()
            case "2":
                print("Сохраненные игроки")
            case "3":
                exit(0)
            default :
                print("Неверная команда")
            }
        }
    }
}
