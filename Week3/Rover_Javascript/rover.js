var grid = [];

var Rover = {
    position: [0,0], 
    direction: 'N'
};

function createGrid() {
    for (i = 0; i < 11; i++) {
        grid[i] = []; 
        for (j = 0; j < 11; j++) {
        grid[i][j]=0;
        }
    }
}

function showGrid() {
    for (i = 0; i < 11; i++) {
        document.write("<br>");
        for (j = 0 ; j < 11; j++) {
        document.write("*"+grid[i][j]+"*");     
        }
    }
    document.write("<br>");
}

function createRover() {
    Rover = {
        position: [5][5],
        direction: "N"
    }
}

function initRover(i, j) {
    Rover = {
        position: grid[i][j] = "<strong>R</strong>"
    }
    document.body.innerHTML = "";
    showGrid();
}

function actionRover(ejeX, ejeY) {
    var move = prompt("Where do you want move the rover: N, E, S or W?")
    move = move.toUpperCase();
    var rover_movements = move.split(" ");
    for (index = 0; index < rover_movements.length; index++) {
        switch(rover_movements[index]) {
            case 'N':
              Rover.position = grid[x][y]="<strong>"+0+"</strong>"
              Rover.position = grid[x-=1][y]="<strong>R</strong>"
            break;
            case 'E':
              Rover.position = grid[x][y]="<strong>"+0+"</strong>"
              Rover.position = grid[x+=1][y]="<strong>R</strong>"
            break;
            case 'S':
              Rover.position = grid[x][y]="<strong>"+0+"</strong>"
              Rover.position = grid[x+=1][y]="<strong>R</strong>"
            break;
            case 'W':
              Rover.position = grid[x][y]="<strong>"+0+"</strong>"
              Rover.position = grid[x-=1][y]="<strong>R</strong>"
            break;
        }
        showGrid();
    }
}

createGrid();
showGrid();
initRover(5, 5);
actionRover(5, 5);

