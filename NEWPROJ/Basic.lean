theorem thm1 : p ∧ q ↔ q ∧ p := by
  apply Iff.intro
  · intro hpq
    apply And.intro
    exact hpq.right
    exact hpq.left
  · intro hqp
    apply And.intro
    exact hqp.right
    exact hqp.left


theorem thm2 : ∀ a b c : ℕ, a = b → a = c → c = b := by
  intros
  apply Eq.trans
  apply Eq.symm
  assumption
  assumption
