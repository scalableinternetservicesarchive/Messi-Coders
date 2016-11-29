#!/bin/bash
bin/rails generate model d_Match-Data TournamentName:string Team1:string Team2:string Date:string Score:string City:string StateCountry:string GameId:string
bin/rails generate model d_Player-Data TournamentName:string Team1:string Team2:string Date:string Score:string City:string StateCountry:string GameId:string
