import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_25139

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

def witness : Circuit := ⟨[⟨.or, [2, 3]⟩, ⟨.or, [1, 4]⟩, ⟨.and, [6, 7]⟩, ⟨.or, [6, 7]⟩, ⟨.or, [5, 8]⟩, ⟨.or, [0, 9]⟩, ⟨.and, [10, 11]⟩, ⟨.not, [12]⟩], 13⟩

theorem basis_ok : FanInTwo witness := by
  simp [FanInTwo, witness]

end PEqualNP.Outside.L_meta_25139

theorem PEqualNP.Outside.L_meta_25139 : ∃ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.FanInTwo C ∧ C.size ≤ 9 ∧ ∀ i j : Fin 6, C.eval (List.ofFn fun k : Fin 6 => decide (k = i ∨ k = j)) = (34630321311 : ℕ).testBit (6 * min i.val j.val + max i.val j.val) :=
  ⟨PEqualNP.Outside.L_meta_25139.witness, PEqualNP.Outside.L_meta_25139.basis_ok, by decide, by decide +kernel⟩
