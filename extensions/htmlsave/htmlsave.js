function save_game_data(filename,game_data_str) {
 localStorage.setItem(filename, game_data_str);
}

function load_game_data(filename2) {
 return localStorage.getItem(filename2);
}

function check_is_exists_game_data(filename3) {
 return localStorage.getItem(filename3) !== undefined && localStorage.getItem(filename3) !== null;
}