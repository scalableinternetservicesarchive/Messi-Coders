#!/bin/bash
bin/rails generate model d_MatchData TournamentName:string Team1:string Team2:string Date:string Score:string City:string StateCountry:string GameId:string
bin/rails generate model d_PlayerData PID:float FirstName:string LastName:string CLUB:string NUM:float DOB:string POS:string HomeTown:string HomeState:string Height:string School:string Twitter:string
