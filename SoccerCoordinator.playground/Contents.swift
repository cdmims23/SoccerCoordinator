// Individual Player Dictionaries

let player1: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "YES", "Guardians": "Jim and Jan Smith"]
let player2: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "YES", "Guardians": "Clara Tanner"]
let player3: [String: String] = ["Name": "Bill Bon", "Height": "43", "Experience": "YES", "Guardians": "Sara and Jenny Bon"]
let player4:[String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "NO", "Guardians": "Wendy and Mike Gordon"]
let player5:[String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "NO", "Guardians": "Charles and Sylvia Gill"]
let player6:[String: String] = ["Name": "Kimmy Stein", "Height": "41", "Experience": "NO", "Guardians": "Bill and Hillary Stein"]
let player7:[String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "NO", "Guardians": "Jeff Adams"]
let player8:[String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "YES", "Guardians": "Heather Bledsoe"]
let player9:[String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "YES", "Guardians": "Henrietta Dumas"]
let player10:[String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "NO", "Guardians": "Gala Dali"]
let player11:[String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "NO", "Guardians": "Sam and Elaine Kavalier"]
let player12:[String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "NO", "Guardians": "Aaron and Jill Finkelstein"]
let player13:[String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "YES", "Guardians": "Robin and Sarika Soto"]
let player14:[String: String] = ["Name": "Chloe Alaska", "Height": "47", "Experience": "NO", "Guardians": "David and Jamie Alaska"]
let player15:[String: String] = ["Name": "Arnold Willis", "Height": "43", "Experience": "NO", "Guardians": "Claire Willis"]
let player16:[String: String] = ["Name": "Phillip Helm", "Height": "44", "Experience": "YES", "Guardians": "Thomas Helm and Eva Jones"]
let player17:[String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "YES", "Guardians": "Wynona Brown"]
let player18:[String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "YES", "Guardians": "Hyman and Rachel Krustofski"]

// Array Of Dictionaries For Entire League
let entireLeague: [[String: String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Variables so there are no hard coded numbers
var numberOfTeams = 3
var numberOfPlayersEachTeam = entireLeague.count / numberOfTeams
var equalNumberOfPlayers = numberOfPlayersEachTeam / 2

// Array Of Teams
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Loop Through each player to add players with experience first.
for index in 0..<entireLeague.count {
    if teamDragons.count<equalNumberOfPlayers && entireLeague[index]["Experience"] == "YES" {
        teamDragons.append(entireLeague[index])
    }else if teamSharks.count<equalNumberOfPlayers && entireLeague[index]["Experience"] == "YES" {
        teamSharks.append(entireLeague[index])
    }else if teamRaptors.count<equalNumberOfPlayers && entireLeague[index]["Experience"] == "YES"{
        teamRaptors.append(entireLeague[index])
    }
}

// Loop through each player to add players without experience
for index in 0..<entireLeague.count {
    if teamDragons.count<numberOfPlayersEachTeam && entireLeague[index]["Experience"] == "NO" {
        teamDragons.append(entireLeague[index])
    }else if teamSharks.count<numberOfPlayersEachTeam && entireLeague[index]["Experience"] == "NO" {
        teamSharks.append(entireLeague[index])
    }else if teamRaptors.count<numberOfPlayersEachTeam && entireLeague[index]["Experience"] == "NO"{
        teamRaptors.append(entireLeague[index])
    }
}

// Parent Letter Function
func parentLetter(teamName: String, team: [[String: String]]) {
    // Loop through each player on the team.
    for index in 0..<team.count {
        // Find out the team meeting time using teamName variable
        var teamMeetingTime = "March 17th at 1p.m."
        if teamName == "Sharks" {
            teamMeetingTime = "March 17th at 3p.m."
        }else if teamName == "Raptors" {
            teamMeetingTime = "March 18th at 1p.m."
        }
        print("Dear \(team[index]["Guardians"]!), Your child \(team[index]["Name"]!) has been chosen to play for the \(teamName). Our first practice time will be \(teamMeetingTime) Hope to see you there!")
        print()
    }
}

// Call the parentLetter Function
parentLetter(teamName: "Dragons", team: teamDragons)
print()
parentLetter(teamName: "Sharks", team: teamSharks)
print()
parentLetter(teamName: "Raptors", team: teamRaptors)






