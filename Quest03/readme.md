━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Tujuan    : Memahami basis 16
Konsep    : Setiap digit hex bernilai 0-15. Digit ke-i = 16^i.

Input     : String hex (misal "1A3")
Output    : Nilai desimal (misal 419)

Contoh    :
   Input : "1A3"
   Output: 419

   Karena:
      '1' = 1,  1 × 16^2 = 256
      'A' = 10, 10 × 16^1 = 160
      '3' = 3,  3 × 16^0 =   3
                           ────
                           419

Aturan    :
   - Tidak pakai parseInt
   - Handle digit '0'-'9', 'A'-'F', 'a'-'f'
   - Handle prefix "0x" (opsional)

Verifikasi: Uji dengan tabel berikut:

   | Input  | Expected Output |
   |--------|-----------------|
   | "0"    | 0               |
   | "F"    | 15              |
   | "10"   | 16              |
   | "FF"   | 255             |
   | "1A3"  | 419             |
   | "DEAD" | 57005           |
   | "BEEF" | 48879           |

Tantangan :
   - Handle input kosong → return 0
   - Handle karakter invalid → return error
