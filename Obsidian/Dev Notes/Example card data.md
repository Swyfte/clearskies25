## Fireball
Type: Combat

Rarity: Common

Rules Text: "Fireball deals n damage to each enemy."

Flavour Text: ""One of these days you're going to find yourself in an encounter where fireball just isn't gonna-" --Person within fireball distance."

Effect Tags: {"Combat", "Fire", "Damage(n)", "AOE"}

Max Count: 4

AP Cost: 1

Purchase Cost: low


```csharp
public class Card {
	public string Name { get; set; }
	public CardType CardType { get; set; }
	public CardRarity Rarity { get; set; }
	public string RulesText { get; set; }
	public string OverchargeText { get; set; }
	public string FlavourText { get; set; }
	public int EffectStrength { get; set; }
	private int currentEffectStrength;
	public EffectType EffectType { get; set; }
	public string OverchargeBonus { get; set; }
	public int OverchargeLevel { get; set; }
	public List<string> Tags { get; set; }

	public Card()
	{
		//TODO: Add constructor logic
	}

	// This should probably return something
	// possibly a modified clone of the current card?
	public void Overcharge()
	{
		if (OverchargeLevel < 3)
		{
			OverchargeLevel++;
			currentEffectStrength = EffectStrength 
							+ (OverchargeBonus * OverchargeLevel);
		}
	}
	
	public void ResetOvercharge()
	{
		OverchargeLevel = 0;
	}
}

Card cd = new Card() {
	Name = "Fireball",
	CardType = CardType.Combat,
	Rarity = CardRarity.Common,
	RulesText = "Fireball deals 4 damage to each enemy",
	OverchargeText = "+2 Damage, +1 Burn",
	FlavourText = "\"What's your point, person within fireball distance?\"",
	EffectStrength = 4,
	EffectType = EffectType.Damage,
	OverchargeBonus = "Burn",
	Tags = new List<string>() {
		"Combat",
		"Fire",
		"Damage",
		"AOE"
	}
};
```