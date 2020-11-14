//
//  ViewController.swift
//  Hangman
//
//  Created by Florian Sorin on 02/04/16.
//  Copyright © 2016 Florian Sorin. All rights reserved.
//

import UIKit

// Convert a string to an array of strings
extension String {
    var letters:[String] {
        return self.map { String($0) }
    }
}

// Number of mistakes made
var mistakes = 0

class ViewController: UIViewController {
    
    // List of keys and keyboard buttons and boolean to know the state of the keayboard
    var keyList = ["A", "Z", "E", "R", "T", "Y", "U", "I", "O","P",
                    "Q", "S", "D", "F", "G", "H", "J", "K", "L", "M",
                    "W", "X", "C", "V", "B", "N", "DEL", "OK"]
    var keyBoard = [UIButton]()
    var isNewGame = false
    
    // English list of words
    var englishList = ["ABLE","ABOUT","ACCOUNT","ACID","ACROSS","ACT","ADDITION","ADJUSTMENT","ADVERTISEMENT","AFTER","AGAIN","AGAINST","AGREEMENT","AIR","ALL","ALMOST","AMONG","AMOUNT","AMUSEMENT","AND","ANGLE","ANGRY","ANIMAL","ANSWER","ANT","ANY","APPARATUS","APPLE","APPROVAL","ARCH","ARGUMENT","ARM","ARMY","ART","ATTACK","ATTEMPT","ATTENTION","ATTRACTION","AUTHORITY","AUTOMATIC","AWAKE","BABY","BACK","BAD","BAG","BALANCE","BALL","BAND","BASE","BASIN","BASKET","BATH","BEAUTIFUL","BECAUSE","BED","BEE","BEFORE","BEHAVIOUR","BELIEF","BELL","BENT","BERRY","BETWEEN","BIRD","BIRTH","BIT","BITE","BITTER","BLACK","BLADE","BLOOD","BLOW","BLUE","BOARD","BOAT","BODY","BOILING","BONE","BOOK","BOOT","BOTTLE","BOX","BOY","BRAIN","BRAKE","BRANCH","BRASS","BREAD","BREATH","BRICK","BRIDGE","BRIGHT","BROKEN","BROTHER","BROWN","BRUSH","BUCKET","BUILDING","BULB","BURN","BURST","BUSINESS","BUT","BUTTER","BUTTON","CAKE","CAMERA","CANVAS","CARD","CARE","CARRIAGE","CART","CAT","CAUSE","CERTAIN","CHAIN","CHALK","CHANCE","CHANGE","CHEAP","CHEESE","CHEMICAL","CHEST","CHIEF","CHIN","CHURCH","CIRCLE","CLEAN","CLEAR","CLOCK","CLOTH","CLOUD","COAL","COAT","COLD","COLLAR","COLOUR","COMB","COME","COMFORT","COMMITTEE","COMMON","COMPANY","COMPARISON","COMPETITION","COMPLETE","COMPLEX","CONDITION","CONNECTION","CONSCIOUS","CONTROL","COOK","COPPER","COPY","CORD","CORK","COTTON","COUGH","COUNTRY","COVER","COW","CRACK","CREDIT","CRIME","CRUEL","CRUSH","CRY","CUP","CURRENT","CURTAIN","CURVE","CUSHION","DAMAGE","DANGER","DARK","DAUGHTER","DAY","DEAD","DEAR","DEATH","DEBT","DECISION","DEEP","DEGREE","DELICATE","DEPENDENT","DESIGN","DESIRE","DESTRUCTION","DETAIL","DEVELOPMENT","DIFFERENT","DIGESTION","DIRECTION","DIRTY","DISCOVERY","DISCUSSION","DISEASE","DISGUST","DISTANCE","DISTRIBUTION","DIVISION","DOG","DOOR","DOUBT","DOWN","DRAIN","DRAWER","DRESS","DRINK","DRIVING","DROP","DRY","DUST","EAR","EARLY","EARTH","EAST","EDGE","EDUCATION","EFFECT","EGG","ELASTIC","ELECTRIC","END","ENGINE","ENOUGH","EQUAL","ERROR","EVEN","EVENT","EVER","EVERY","EXAMPLE","EXCHANGE","EXISTENCE","EXPANSION","EXPERIENCE","EXPERT","EYE","FACE","FACT","FALL","FALSE","FAMILY","FAR","FARM","FAT","FATHER","FEAR","FEATHER","FEEBLE","FEELING","FEMALE","FERTILE","FICTION","FIELD","FIGHT","FINGER","FIRE","FIRST","FISH","FIXED","FLAG","FLAME","FLAT","FLIGHT","FLOOR","FLOWER","FLY","FOLD","FOOD","FOOLISH","FOOT","FOR","FORCE","FORK","FORM","FORWARD","FOWL","FRAME","FREE","FREQUENT","FRIEND","FROM","FRONT","FRUIT","FULL","FUTURE","GARDEN","GENERAL","GET","GIRL","GIVE","GLASS","GLOVE","GOAT","GOLD","GOOD","GOVERNMENT","GRAIN","GRASS","GREAT","GREEN","GREY","GRIP","GROUP","GROWTH","GUIDE","GUN","HAIR","HAMMER","HAND","HANGING","HAPPY","HARBOUR","HARD","HARMONY","HAT","HATE","HAVE","HEAD","HEALTHY","HEAR","HEARING","HEART","HEAT","HELP","HIGH","HISTORY","HOLE","HOLLOW","HOOK","HOPE","HORN","HORSE","HOSPITAL","HOUR","HOUSE","HOW","HUMOUR","ICE","IDEA","IF","ILL","IMPORTANT","IMPULSE","INCREASE","INDUSTRY","INK","INSECT","INSTRUMENT","INSURANCE","INTEREST","INVENTION","IRON","ISLAND","JELLY","JEWEL","JOIN","JOURNEY","JUDGE","JUMP","KEEP","KETTLE","KEY","KICK","KIND","KISS","KNEE","KNIFE","KNOT","KNOWLEDGE","LAND","LANGUAGE","LAST","LATE","LAUGH","LAW","LEAD","LEAF","LEARNING","LEATHER","LEFT","LEG","LET","LETTER","LEVEL","LIBRARY","LIFT","LIGHT","LIKE","LIMIT","LINE","LINEN","LIP","LIQUID","LIST","LITTLE","LIVING","LOCK","LONG","LOOK","LOOSE","LOSS","LOUD","LOVE","LOW","MACHINE","MAKE","MALE","MAN","MANAGER","MAP","MARK","MARKET","MARRIED","MASS","MATCH","MATERIAL","MAY","MEAL","MEASURE","MEAT","MEDICAL","MEETING","MEMORY","METAL","MIDDLE","MILITARY","MILK","MIND","MINE","MINUTE","MIST","MIXED","MONEY","MONKEY","MONTH","MOON","MORNING","MOTHER","MOTION","MOUNTAIN","MOUTH","MOVE","MUCH","MUSCLE","MUSIC","NAIL","NAME","NARROW","NATION","NATURAL","NEAR","NECESSARY","NECK","NEED","NEEDLE","NERVE","NET","NEW","NEWS","NIGHT","NOISE","NORMAL","NORTH","NOSE","NOT","NOTE","NOW","NUMBER","NUT","OBSERVATION","OFF","OFFER","OFFICE","OIL","OLD","ONLY","OPEN","OPERATION","OPINION","OPPOSITE","ORANGE","ORDER","ORGANIZATION","ORNAMENT","OTHER","OUT","OVEN","OVER","OWNER","PAGE","PAIN","PAINT","PAPER","PARALLEL","PARCEL","PART","PAST","PASTE","PAYMENT","PEACE","PEN","PENCIL","PERSON","PHYSICAL","PICTURE","PIG","PIN","PIPE","PLACE","PLANE","PLANT","PLATE","PLAY","PLEASE","PLEASURE","PLOUGH","POCKET","POINT","POISON","POLISH","POLITICAL","POOR","PORTER","POSITION","POSSIBLE","POT","POTATO","POWDER","POWER","PRESENT","PRICE","PRINT","PRISON","PRIVATE","PROBABLE","PROCESS","PRODUCE","PROFIT","PROPERTY","PROSE","PROTEST","PUBLIC","PULL","PUMP","PUNISHMENT","PURPOSE","PUSH","PUT","QUALITY","QUESTION","QUICK","QUIET","QUITE","RAIL","RAIN","RANGE","RAT","RATE","RAY","REACTION","READING","READY","REASON","RECEIPT","RECORD","RED","REGRET","REGULAR","RELATION","RELIGION","REPRESENTATIVE","REQUEST","RESPECT","RESPONSIBLE","REST","REWARD","RHYTHM","RICE","RIGHT","RING","RIVER","ROAD","ROD","ROLL","ROOF","ROOM","ROOT","ROUGH","ROUND","RUB","RULE","RUN","SAD","SAFE","SAIL","SALT","SAME","SAND","SAY","SCALE","SCHOOL","SCIENCE","SCISSORS","SCREW","SEA","SEAT","SECOND","SECRET","SECRETARY","SEE","SEED","SEEM","SELECTION","SELF","SEND","SENSE","SEPARATE","SERIOUS","SERVANT","SEX","SHADE","SHAKE","SHAME","SHARP","SHEEP","SHELF","SHIP","SHIRT","SHOCK","SHOE","SHORT","SHUT","SIDE","SIGN","SILK","SILVER","SIMPLE","SISTER","SIZE","SKIN","SKIRT","SKY","SLEEP","SLIP","SLOPE","SLOW","SMALL","SMASH","SMELL","SMILE","SMOKE","SMOOTH","SNAKE","SNEEZE","SNOW","SOAP","SOCIETY","SOCK","SOFT","SOLID","SOME","SON","SONG","SORT","SOUND","SOUP","SOUTH","SPACE","SPADE","SPECIAL","SPONGE","SPOON","SPRING","SQUARE","STAGE","STAMP","STAR","START","STATEMENT","STATION","STEAM","STEEL","STEM","STEP","STICK","STICKY","STIFF","STILL","STITCH","STOCKING","STOMACH","STONE","STOP","STORE","STORY","STRAIGHT","STRANGE","STREET","STRETCH","STRONG","STRUCTURE","SUBSTANCE","SUCH","SUDDEN","SUGAR","SUGGESTION","SUMMER","SUN","SUPPORT","SURPRISE","SWEET","SWIM","SYSTEM","TABLE","TAIL","TAKE","TALK","TALL","TASTE","TAX","TEACHING","TENDENCY","TEST","THAN","THAT","THE","THEN","THEORY","THERE","THICK","THIN","THING","THIS","THOUGHT","THREAD","THROAT","THROUGH","THROUGH","THUMB","THUNDER","TICKET","TIGHT","TILL","TIME","TIN","TIRED","TOE","TOGETHER","TOMORROW","TONGUE","TOOTH","TOP","TOUCH","TOWN","TRADE","TRAIN","TRANSPORT","TRAY","TREE","TRICK","TROUBLE","TROUSERS","TRUE","TURN","TWIST","UMBRELLA","UNDER","UNIT","USE","VALUE","VERSE","VERY","VESSEL","VIEW","VIOLENT","VOICE","WAITING","WALK","WALL","WAR","WARM","WASH","WASTE","WATCH","WATER","WAVE","WAX","WAY","WEATHER","WEEK","WEIGHT","WELL","WEST","WET","WHEEL","WHEN","WHERE","WHILE","WHIP","WHISTLE","WHITE","WHO","WHY","WIDE","WILL","WIND","WINDOW","WINE","WING","WINTER","WIRE","WISE","WITH","WOMAN","WOOD","WOOL","WORD","WORK","WORM","WOUND","WRITING","WRONG","YEAR","YELLOW","YES","YESTERDAY","YOU","YOUNG"]

    
    // All letters of the word, labels to display them and number of letters found by the player
    var word = [String]()
    var wordDisplay = [UILabel]()
    var lettersFound = 0
    var isInWord = false
    
    // Labels used when launching a new multiplayer game
    var newWord = UILabel(frame: CGRect(x: UIScreen.main.bounds.size.width*0.2, y: 0, width: UIScreen.main.bounds.size.width*0.8, height: UIScreen.main.bounds.size.height*0.05))
    var newGameMessage = UILabel(frame: CGRect(x: UIScreen.main.bounds.size.width*0.2, y: 0, width: UIScreen.main.bounds.size.width*0.8, height: UIScreen.main.bounds.size.height*0.05))

    // Draw view
    var hangDraw = hangView(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height*0.1, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*0.45))
    
    
    // Create the keyboard and add it to the view
    func setKeyboard() {
        for i in 0...keyList.count-1 {
            keyBoard.append(UIButton()) // Create the key
            keyBoard[i].setTitle(keyList[i], for: UIControl.State()) // Name the key
            keyBoard[i].isEnabled = false // Disable the key
            keyBoard[i].setTitleColor(UIColor.white, for: UIControl.State())
            keyBoard[i].backgroundColor = UIColor.lightGray // Color for disabled key
            
            // Size of the key
            if i < keyList.count-2 {
                keyBoard[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width*0.08, height: UIScreen.main.bounds.size.height*0.072)
            } else {
                keyBoard[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width*0.16, height: UIScreen.main.bounds.size.height*0.072)
            }
            
            keyBoard[i].layer.cornerRadius = 10.0 //Round corners
            keyBoard[i].addTarget(self, action: #selector(ViewController.keyPressed(_:)), for: .touchUpInside) //Add action to the key
            keyBoard[i].tag = i //Add identifier to the key
            
            // Display the key where it belongs
            if i < 10 { // First line
                keyBoard[i].center = CGPoint(x: UIScreen.main.bounds.size.width*CGFloat(i+1)/11, y: UIScreen.main.bounds.size.height*3/4)
            } else if i < 20 { // Second line
                keyBoard[i].center = CGPoint(x: UIScreen.main.bounds.size.width*CGFloat(i-9)/11,y: UIScreen.main.bounds.size.height*10/12)
            } else if i < keyList.count - 2 { // Third line
                keyBoard[i].center = CGPoint(x: UIScreen.main.bounds.size.width*CGFloat(i-19)/11, y: UIScreen.main.bounds.size.height*11/12)
            } else if i == keyList.count - 2 { // Delete button
                keyBoard[i].center = CGPoint(x: UIScreen.main.bounds.size.width*7.5/11, y: UIScreen.main.bounds.size.height*11/12)
            } else { // OK button
                keyBoard[i].center = CGPoint(x: UIScreen.main.bounds.size.width*9.5/11, y: UIScreen.main.bounds.size.height*11/12)
            }
            
            self.view.addSubview(keyBoard[i]) // Add the key to the view
        }        
    }
    
    // Authorize the use of the keyboard (enable buttons and set the darkgray color
    func enableKeyBoard() {
        for key in keyBoard {
            key.isEnabled = true // Enable the key
            key.backgroundColor = UIColor.darkGray // Color for enabled key
        }
    }
    
    // Forbide the use of the editing keys (Delete and OK buttons)
    func disableEditingKeys() {
        keyBoard[keyList.count-2].isEnabled = false // Disable the DEL key
        keyBoard[keyList.count-2].backgroundColor = UIColor.lightGray // Color for disabled key
        keyBoard[keyList.count-1].isEnabled = false // Disable the OK key
        keyBoard[keyList.count-1].backgroundColor = UIColor.lightGray // Color for disabled key

    }
    
    // Create the top bar
    func setBar() {
        // Solo game button
        let newSoloGame = UIButton()
        newSoloGame.setTitle("Solo Game", for: UIControl.State())
        newSoloGame.isEnabled = true // Enable the key
        newSoloGame.setTitleColor(UIColor.blue, for: UIControl.State())
        newSoloGame.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width*0.4, height: UIScreen.main.bounds.size.height*0.07)
        newSoloGame.addTarget(self, action: #selector(ViewController.newSoloGame(_:)), for: .touchUpInside) // Add action to the key
        newSoloGame.center = CGPoint(x: UIScreen.main.bounds.size.width*0.15, y: UIScreen.main.bounds.size.height*0.07)
        self.view.addSubview(newSoloGame)
        
        // Multiplayer game button
        let newMultiGame = UIButton()
        newMultiGame.setTitle("Multi Game", for: UIControl.State())
        newMultiGame.isEnabled = true // Enable the key
        newMultiGame.setTitleColor(UIColor.blue, for: UIControl.State())
        newMultiGame.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width*0.4, height: UIScreen.main.bounds.size.height*0.07)
        newMultiGame.addTarget(self, action: #selector(ViewController.newMultiGame(_:)), for: .touchUpInside) // Add action to the key
        newMultiGame.center = CGPoint(x: UIScreen.main.bounds.size.width*0.85, y: UIScreen.main.bounds.size.height*0.07)
        self.view.addSubview(newMultiGame)
    }
    
    // Keyboard actions
    @objc func keyPressed(_ sender: UIButton!) {
        // Choice between editing mode and game mode
        if isNewGame {
            wordEdit(keyBoard[sender.tag].currentTitle!) // Editing mode
        } else { // Game mode
            // Disable the key hitted
            keyBoard[sender.tag].isEnabled = false // Disable the key
            keyBoard[sender.tag].backgroundColor = UIColor.lightGray // Color for disabled key
            
            // Search if the letter is in the word and react to it
            for i in 0...word.count-1 {
                if word[i] == keyList[sender.tag] { // If the letter is in the word
                    wordDisplay[i].text = word[i] // Display the letter instead of the "_"
                    view.addSubview(wordDisplay[i])
                    lettersFound += 1 // Add 1 to the number of letters found
                    isInWord = true // Inform the program that there is no mistake
                }
            }
            
            // Victory popup if all letters have been found before 11 mistakes
            if lettersFound == word.count {
                endGame("Congratulations !", message: "You have found the word !")
            }
            
            // If the letter is not in the word, add one mistake to the total and draw the next part of the hangman
            if !isInWord {
                mistakes += 1
                hangDraw.setNeedsDisplay()
            }
            
            // Lost popup if 11 mistakes have been made and displaying the entire word
            if mistakes == 11 {
                endGame("Game over !", message: "Sorry, you didn't find the word ...")
                
                for i in 0...word.count-1 {
                    wordDisplay[i].text = word[i]
                }
            }
            
            isInWord = false // Reseting the boolean for the next letter
        }
    }
    
    // Editing function used to enter the word to find when a new multiplayer game is launch
    func wordEdit(_ key: String)
    {
        // Initialize the editing area
        if key == "INIT"
        {
            // Text Field settings
            newWord.center = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*7.5/12)
            newWord.textAlignment = NSTextAlignment.center
            newWord.text = ""
            newWord.layer.borderWidth = 0.5
            newWord.layer.borderColor = UIColor.darkGray.cgColor
            newWord.layer.cornerRadius = 10.0
            view.addSubview(newWord)
            
            // Message settings
            newGameMessage.center = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*6/12)
            newGameMessage.textAlignment = NSTextAlignment.center
            newGameMessage.text = "Enter the word to find"
            view.addSubview(newGameMessage)
        } else if key == "DEL" { // If the delete key was hit, remove the last letter of the word edited
            if !(newWord.text!.isEmpty) {
                var tmpTab = newWord.text!.letters
                tmpTab.removeLast()
                newWord.text! = tmpTab.joined(separator: "")
                view.addSubview(newWord)
            }
        } else if key == "OK" { //If the OK key was hit, launch the game with the edited word as word to find
            if !(newWord.text!.isEmpty) {
                word = newWord.text!.letters
                newWord.removeFromSuperview()
                newGameMessage.removeFromSuperview()
                createWordSpace()
                disableEditingKeys()
                isNewGame = false
            }
        } else { // If another key was hit, add the letter to the word edited
            newWord.text! += key
            view.addSubview(newWord)
        }
        
        if newWord.text!.isEmpty { // Disable the delete and OK button if the textfield is empty
            disableEditingKeys()
        } else if isNewGame {
            keyBoard[keyList.count-2].isEnabled = true // Enable the DEL key
            keyBoard[keyList.count-2].backgroundColor = UIColor.darkGray // Color for enabled key
            
            // Enable the OK key if there is at least 3 letters in the word
            if(newWord.text!.letters.count > 2) {
                keyBoard[keyList.count-1].isEnabled = true // Enable the OK key
                keyBoard[keyList.count-1].backgroundColor = UIColor.darkGray // Color for enabled key
            } else {
                keyBoard[keyList.count-1].isEnabled = false // Disable the OK key
                keyBoard[keyList.count-1].backgroundColor = UIColor.lightGray // Color for disabled key
            }
        }
    }
    
    // Launch a new multiplayer game when the button associated is pressed
    @objc func newMultiGame(_ sender: UIButton!) {
        newGame()
        wordEdit("INIT")
    }
    
    // Launch a new solo game when the button associated is pressed
    @objc func newSoloGame(_ sender: UIButton!) {
        newGame()
        newWord.removeFromSuperview()
        newGameMessage.removeFromSuperview()
        word =  englishList[Int(arc4random_uniform(UInt32(englishList.count)))].letters
        createWordSpace()
        isNewGame = false
    }
    
    // Generic new game function used by the two others above
    func newGame() {
        isNewGame = true
        mistakes = 0
        lettersFound = 0
        hangDraw.removeFromSuperview()
        hangDraw = hangView(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height*0.1, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*0.45))
        view.addSubview(self.hangDraw)
        hangDraw.setNeedsDisplay()
        deleteWordSpace()
        enableKeyBoard()
        disableEditingKeys()
    }
    
    
    // Create the labels for all letters of the word, set at "_" at the beginning
    func createWordSpace() {
        // If there is already a word space, delete it
        deleteWordSpace()
        
        for i in 0...word.count-1 {
            wordDisplay.append(UILabel())
            wordDisplay[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width*0.07, height: UIScreen.main.bounds.size.height*0.072)
            wordDisplay[i].center = CGPoint(x: UIScreen.main.bounds.size.width*CGFloat(i+1)/CGFloat(word.count+1),y: UIScreen.main.bounds.size.height*7.5/12)
            wordDisplay[i].textAlignment = NSTextAlignment.center
            wordDisplay[i].text = "_"
            self.view.addSubview( wordDisplay[i])
        }
    }
    
    // Delete the "wordspace" : the displaying area of the hidden word ("_ _ _")
    func deleteWordSpace() {
        if !wordDisplay.isEmpty {
            for letter in wordDisplay {
                letter.removeFromSuperview()
            }
            
            wordDisplay.removeAll()
        }
    }
    
    // End the game by displaying a popup message
    func endGame(_ title: String, message: String) {
        
        for i in 0...keyList.count-1 {
            keyBoard[i].isEnabled = false // Disable the key
            keyBoard[i].setTitleColor(UIColor.white, for: UIControl.State())
            keyBoard[i].backgroundColor = UIColor.lightGray // Color for disabled key
        }
        
        // Create an alert controller
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Add an "OK" button and Grab the value from the text field
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        // Show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBar()
        setKeyboard()
        view.addSubview(hangDraw)
        hangDraw.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// Drawing view where the hangman is drawn
class hangView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    var headAdded = false
    
    override func draw(_ rect: CGRect)
    {
        let path = UIBezierPath()
        
        // Head initialization
        let shapeLayer = CAShapeLayer()
        
        // Bottom line
        if mistakes >= 1 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*1/4, y: UIScreen.main.bounds.size.height*0.40))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*3/4, y: UIScreen.main.bounds.size.height*0.40))
        }
        
        // Vertical line
        if mistakes >= 2 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*1/4, y: UIScreen.main.bounds.size.height*0.1))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*1/4, y: UIScreen.main.bounds.size.height*0.40))
        }
        
        // Top line
        if mistakes >= 3 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*1/4, y: UIScreen.main.bounds.size.height*0.1))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.1))
        }
        
        // Support line
        if mistakes >= 4 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*1/4, y: UIScreen.main.bounds.size.height*0.15))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.35, y: UIScreen.main.bounds.size.height*0.1))
        }
        
        // Rope line
        if mistakes >= 5 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.1))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.15))
        }
        
        // Head
        if mistakes >= 6 {
            let circlePath = UIBezierPath(arcCenter: CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.17), radius: UIScreen.main.bounds.size.height*0.02, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
            shapeLayer.path = circlePath.cgPath
            self.layer.addSublayer(shapeLayer)
            headAdded = true
        } else if headAdded {
            shapeLayer.removeFromSuperlayer()
            headAdded = false
        }
        
        // Body
        if mistakes >= 7 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.19))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.26))
        }
        
        // Left arm
        if mistakes >= 8 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.21))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.45, y: UIScreen.main.bounds.size.height*0.23))
        }
        
        // Right arm
        if mistakes >= 9 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.21))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.55, y: UIScreen.main.bounds.size.height*0.23))
        }
        
        // Left leg
        if(mistakes >= 10) {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.26))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.45, y: UIScreen.main.bounds.size.height*0.30))
        }
        
        // Right leg
        if mistakes >= 11 {
            path.move(to: CGPoint(x: UIScreen.main.bounds.size.width*0.5, y: UIScreen.main.bounds.size.height*0.26))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width*0.55, y: UIScreen.main.bounds.size.height*0.30))
        }
        
        if mistakes != 0 {
            path.lineWidth = 3.0
            path.close()
            path.stroke()
        }
    }
}
