import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_25141

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

def witness : Circuit := ⟨[⟨.or, [2, 3]⟩, ⟨.or, [1, 4]⟩, ⟨.or, [0, 5]⟩, ⟨.or, [4, 5]⟩, ⟨.and, [7, 8]⟩, ⟨.and, [6, 9]⟩, ⟨.or, [10, 11]⟩, ⟨.not, [12]⟩], 13⟩

theorem basis_ok : FanInTwo witness := by
  simp [FanInTwo, witness]

end PEqualNP.Outside.L_meta_25141

theorem PEqualNP.Outside.L_meta_25141 : ∃ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.FanInTwo C ∧ C.size ≤ 9 ∧ ∀ i j : Fin 6, C.eval (List.ofFn fun k : Fin 6 => decide (k = i ∨ k = j)) = (34630322093 : ℕ).testBit (6 * min i.val j.val + max i.val j.val) :=
  ⟨PEqualNP.Outside.L_meta_25141.witness, PEqualNP.Outside.L_meta_25141.basis_ok, by decide, by decide +kernel⟩
