
variable (p q r : Prop)


-- commutativity of ∧
theorem and_comm : p ∧ q ↔ q ∧ p := by
  apply Iff.intro
  · intro hpq
    apply And.intro
    exact hpq.right
    exact hpq.left
  · intro hqp
    apply And.intro
    exact hqp.right
    exact hqp.left


example : ¬(p ∧ ¬p) := by
  intro h
  exact absurd h.left h.right


example (a b c : Nat) : a + b + c = a + (b + c) + 0 := by
  rw [Nat.add_zero (a + (b + c))]
  exact Nat.add_assoc a b c
