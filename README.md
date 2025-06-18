# Travel Recommendation System (Prolog)

This is a simple **Prolog expert system** that recommends countries based on your travel preferences.  
It uses logical rules to classify the user into a travel profile and then suggest matching destinations.

---

## How It Works

1. You will be asked 5 yes/no questions.
2. Based on your answers, the system identifies your travel profile.
3. It recommends countries that fit your style.

Example questions:
- Do you enjoy outdoor activities like hiking and climbing?
- Do you prefer beach destinations?
- Are you interested in urban and modern cities?

---

## Supported Traveler Profiles

- Explorer
- Gourmet
- Beach Lover
- Eco-Friendly
- Luxury Traveler
- Religious Traveler
- Historical Traveler
- Mountain Lover
- Shopping Lover
- Cold Weather Lover
- Modern Urban Traveler

Each profile is associated with 5 specific country recommendations.

---

## Example Recommendations

| Profile            | Example Countries                     |
|--------------------|----------------------------------------|
| Explorer           | Nepal, Chile, Peru, Indonesia, Canada |
| Gourmet            | Italy, Mexico, Thailand, Turkey, China|
| Beach Lover        | Maldives, Brazil, Greece, Spain       |
| Eco-Friendly       | Costa Rica, Australia, New Zealand    |
| Luxury Traveler    | Monaco, Dubai, Switzerland, Qatar     |
| Cold Weather Lover | Norway, Finland, Canada, Sweden       |
| ...                | ...                                    |

---

## How to Run

1. Open the `.pl` file in SWI-Prolog.
2. Enter: ?- iniciar.
