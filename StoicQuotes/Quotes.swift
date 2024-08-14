import Foundation

struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let author: String
    let imageNames: [String] // Array para manejar múltiples imágenes por autor
}

let quotes: [Quote] = [
    Quote(text: "It is not death that a man should fear, but he should fear never beginning to live.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "You have power over your mind - not outside events. Realize this, and you will find strength.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The happiness of your life depends upon the quality of your thoughts.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The best revenge is to be unlike him who performed the injury.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "He who fears death will never do anything worth of a man who is alive.", author: "Seneca", imageNames: ["Seneca1", "Seneca2"]),
    Quote(text: "We suffer more often in imagination than in reality.", author: "Seneca", imageNames: ["Seneca1", "Seneca2"]),
    Quote(text: "It is the power of the mind to be unconquerable.", author: "Seneca", imageNames: ["Seneca1", "Seneca2"]),
    Quote(text: "Difficulties strengthen the mind, as labor does the body.", author: "Seneca", imageNames: ["Seneca1", "Seneca2"]),
    Quote(text: "How long are you going to wait before you demand the best for yourself?", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Man is not worried by real problems so much as by his imagined anxieties about real problems.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "It's not what happens to you, but how you react to it that matters.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "First say to yourself what you would be; and then do what you have to do.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Wealth consists not in having great possessions, but in having few wants.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "No man is free who is not master of himself.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Don't explain your philosophy. Embody it.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Freedom is the only worthy goal in life. It is won by disregarding things that lie beyond our control.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "If you want to improve, be content to be thought foolish and stupid.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Circumstances don't make the man, they only reveal him to himself.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "He is a wise man who does not grieve for the things which he has not, but rejoices for those which he has.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "To be calm is the highest achievement of the self.", author: "Zen proverb", imageNames: ["Zen1", "Zen2"]),
    Quote(text: "Waste no more time arguing what a good man should be. Be one.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "He who lives in harmony with himself lives in harmony with the universe.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "If it is not right do not do it; if it is not true do not say it.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The soul becomes dyed with the color of its thoughts.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The best answer to anger is silence.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "You become what you give your attention to.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Don't seek for everything to happen as you wish it would, but rather wish that everything happens as it actually will - then your life will flow well.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Make the best use of what is in your power, and take the rest as it happens.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "The more we value things outside our control, the less control we have.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "The greater the difficulty, the more glory in surmounting it.", author: "Epicurus", imageNames: ["Epicurus1", "Epicurus2"]),
    Quote(text: "The wise man does not expose himself needlessly to danger, since there are few things for which he cares sufficiently; but he is willing, in great crises, to give even his life—knowing that under certain conditions it is not worthwhile to live.", author: "Aristotle", imageNames: ["Aristotle1", "Aristotle2"]),
    Quote(text: "The man who has done wrong, is a man who has hurt himself.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "The art of living is more like wrestling than dancing.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "If you want to live a happy life, tie it to a goal, not to people or things.", author: "Albert Einstein", imageNames: ["AlbertEinstein1", "AlbertEinstein2"]),
    Quote(text: "Remember: Matter. How tiny your share of it. Time. How brief and fleeting your allotment of it. Fate. How small a role you play in it.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "True happiness is... to enjoy the present, without anxious dependence upon the future.", author: "Seneca", imageNames: ["Seneca1", "Seneca2"]),
    Quote(text: "Life is very short and anxious for those who forget the past, neglect the present, and fear the future.", author: "Seneca", imageNames: ["Seneca1", "Seneca2"]),
    Quote(text: "You could leave life right now. Let that determine what you do and say and think.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "Death smiles at us all, but all a man can do is smile back.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "What we do now echoes in eternity.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "When you arise in the morning, think of what a precious privilege it is to be alive - to breathe, to think, to enjoy, to love.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The universe is change; our life is what our thoughts make it.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "To love only what happens, what was destined. No greater harmony.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The best revenge is not to be like your enemy.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "Stop whatever you’re doing for a moment and ask yourself: Am I afraid of death because I won’t be able to do this anymore?", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The obstacle is the way.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "The opinion of 10,000 men is of no value if none of them know anything about the subject.", author: "Marcus Aurelius", imageNames: ["MarcusAurelius1", "MarcusAurelius2"]),
    Quote(text: "First learn the meaning of what you say, and then speak.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Only the educated are free.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Man conquers the world by conquering himself.", author: "Zeno of Citium", imageNames: ["Zeno1", "Zeno2"]),
    Quote(text: "The greater the difficulty, the more glory in surmounting it.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Freedom is the only worthy goal in life. It is won by disregarding things that lie beyond our control.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Don’t seek for everything to happen as you wish it would, but rather wish that everything happens as it actually will—then your life will flow well.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"]),
    Quote(text: "Wealth consists not in having great possessions, but in having few wants.", author: "Epictetus", imageNames: ["Epictetus1", "Epictetus2"])
]

