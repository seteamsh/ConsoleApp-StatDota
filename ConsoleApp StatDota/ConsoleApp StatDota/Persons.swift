struct Player {
    let id: Int
    let name : String
    var wins: Int
    var defeats: Int
    var firstPerson: String
    var secondPerson: String
    var thirdPerson: String
}

let temirlan = Player(id: 1, name: "Temirlan", wins: 569, defeats: 560, firstPerson: "Storm Spirit", secondPerson: "Timbersaw", thirdPerson: "Shadow Fiend")
let anuar = Player(id: 2, name: "Wexelar", wins: 700, defeats: 500, firstPerson: "WindRanger", secondPerson: "Slardar", thirdPerson: "CrystalMaiden")
var players = [[temirlan], [anuar]]
