require_relative '../config/environment'

#harry_potter_api = RestClient.get("https://www.potterapi.com/v1/characters?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi")

cli = CLI.new

cli.welcome
cli.get_user_name_and_create
cli.get_spellbook_name
cli.spellbook_instructions_and_choice
