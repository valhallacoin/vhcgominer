#ifndef DECRED_H
#define DECRED_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

void	valhallacoin_hash_nonce(uint32_t grid, uint32_t block, uint32_t threads,
	    uint32_t startNonce, uint32_t *resNonce, uint32_t targetHigh);
void	valhallacoin_cpu_setBlock_52(const uint32_t *input);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* DECRED_H */
