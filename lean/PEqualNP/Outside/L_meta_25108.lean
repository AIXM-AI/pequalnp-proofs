import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_25108

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

def witness : Circuit := ⟨[⟨.or, [1, 2]⟩, ⟨.and, [0, 3]⟩, ⟨.not, [5]⟩, ⟨.or, [0, 6]⟩, ⟨.and, [4, 6]⟩, ⟨.or, [8, 9]⟩, ⟨.or, [7, 10]⟩, ⟨.not, [12]⟩, ⟨.and, [11, 13]⟩], 14⟩

theorem basis_ok : FanInTwo witness := by
  simp [FanInTwo, witness]

end PEqualNP.Outside.L_meta_25108

theorem PEqualNP.Outside.L_meta_25108 : ∃ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.FanInTwo C ∧ C.size ≤ 9 ∧ ∀ i j : Fin 6, C.eval (List.ofFn fun k : Fin 6 => decide (k = i ∨ k = j)) = (274910135 : ℕ).testBit (6 * min i.val j.val + max i.val j.val) :=
  ⟨PEqualNP.Outside.L_meta_25108.witness, PEqualNP.Outside.L_meta_25108.basis_ok, by decide, by decide +kernel⟩
