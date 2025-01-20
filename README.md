### Comparison Table for Solidity Function Modifiers

| Modifier   | Accessible within the current contract | Accessible in the child contract | Accessible externally |
|------------|----------------------------------------|----------------------------------|-----------------------|
| `public`   | ✅                                     | ✅                               | ✅                    |
| `private`  | ✅                                     | ❌                               | ❌                    |
| `internal` | ✅                                     | ✅                               | ❌                    |
| `external` | ❌ (only through `this.functionName()`)| ❌ (only through `this.functionName()`)| ✅              |

