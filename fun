<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fun Fact Generator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        input, button {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
        }
        .fact-box {
            margin-top: 20px;
            padding: 20px;
            background: #f4f4f4;
            display: inline-block;
            border-radius: 10px;
            font-size: 18px;
        }
    </style>
</head>
<body>

    <h2>Fun Fact Generator</h2>
   
    <form onsubmit="return false;">
        <label for="topic">Enter a Topic:</label>
        <input type="text" id="topic" placeholder="E.g., Space">
        <button onclick="generateFact()">Show Fun Fact</button>
    </form>

    <h3>Random Fact</h3>
    <div class="fact-box" id="fact-box">
        Enter a topic and click "Show Fun Fact"!
    </div>
   
    <button onclick="nextFact()" style="display: none;" id="next-btn">Next Fact</button>

    <script>
        const facts = {
            "space": [
                "A day on Venus is longer than a year on Venus!",
                "Neutron stars are so dense that a sugar-cube-sized amount would weigh about a billion tons.",
                "There is a huge cloud of alcohol in space, about 1,000 times the diameter of our solar system!"
            ],
            "animals": [
                "Octopuses have three hearts and blue blood!",
                "A group of flamingos is called a 'flamboyance'.",
                "Sloths can hold their breath longer than dolphins can!"
            ],
            "history": [
                "Napoleon was once attacked by a horde of bunnies!",
                "The Great Fire of London in 1666 started in a bakery.",
                "The Eiffel Tower can be 15 cm taller in the summer due to heat expansion!"
            ],
            "science": [
                "Water can boil and freeze at the same time in special conditions.",
                "Bananas are naturally radioactive because of potassium-40.",
                "There’s enough DNA in the human body to stretch from the sun to Pluto and back."
            ],
            "sports": [
                "Basketball was played with a soccer ball when it was invented!",
                "The Olympic Games were originally a religious festival in ancient Greece.",
                "A golf ball has over 300 dimples to help it fly better."
            ],
            "music": [
                "The world's longest-running concert lasted over 639 years!",
                "Beethoven was almost completely deaf when he composed his Ninth Symphony.",
                "The shortest song ever recorded is 'You Suffer' by Napalm Death, lasting 1.316 seconds!"
            ],
            "food": [
                "Honey never spoils – archaeologists found 3,000-year-old honey that was still good!",
                "Carrots were originally purple, not orange.",
                "White chocolate isn’t actually chocolate because it doesn’t contain cocoa solids."
            ],
            "technology": [
                "The first computer was the size of a room and weighed over 27 tons.",
                "There are more than 4.5 billion internet users in the world.",
                "The first email was sent in 1971 by Ray Tomlinson."
            ],
            "oceans": [
                "The ocean covers about 71% of Earth’s surface.",
                "More than 80% of the ocean is unexplored.",
                "The world's longest mountain range is underwater – the Mid-Atlantic Ridge!"
            ],
            "inventions": [
                "Bubble wrap was originally invented to be wallpaper!",
                "The microwave oven was invented by accident.",
                "The Eiffel Tower was originally supposed to be dismantled after 20 years."
            ],
            "countries": [
                "Canada has more lakes than the rest of the world combined.",
                "Iceland has no mosquitoes!",
                "Russia is bigger than Pluto in surface area."
            ],
            "human body": [
                "Your heart beats about 100,000 times a day!",
                "The human nose can detect over 1 trillion different scents.",
                "The average person sheds about 600,000 skin particles every hour."
            ],
            "weather": [
                "Lightning is hotter than the surface of the sun!",
                "There are places on Earth where it has never rained.",
                "Snow can be yellow, green, or even pink!"
            ],
            "movies": [
                "The first movie ever made was in 1888 and was just 2 seconds long!",
                "The famous 'Wilhelm scream' sound effect has been used in over 400 movies.",
                "Toy Story was the first-ever fully CGI animated film."
            ],
            "books": [
                "The world’s longest book is over 13 million words long.",
                "Dr. Seuss wrote 'Green Eggs and Ham' using only 50 different words.",
                "The first Harry Potter book was rejected 12 times before being published!"
            ]
        };

        let currentTopic = "";
        let currentFacts = [];
        let factIndex = 0;

        function generateFact() {
            const topicInput = document.getElementById("topic").value.toLowerCase();
            if (facts[topicInput]) {
                currentTopic = topicInput;
                currentFacts = facts[topicInput];
                factIndex = 0;
                document.getElementById("fact-box").innerText = currentFacts[factIndex];
                document.getElementById("next-btn").style.display = "inline";
            } else {
                let availableTopics = Object.keys(facts).map(topic => topic.charAt(0).toUpperCase() + topic.slice(1)).join(", ");
                document.getElementById("fact-box").innerHTML = `No facts found for "${topicInput}". Try one of these topics:<br><strong>${availableTopics}</strong>`;
                document.getElementById("next-btn").style.display = "none";
            }
        }

        function nextFact() {
            factIndex = (factIndex + 1) % currentFacts.length;
            document.getElementById("fact-box").innerText = currentFacts[factIndex];
        }
    </script>

</body>
</html>

