--!strict

export type ArmourPiece<T = {}> = {} & T
export type Helmet = ArmourPiece
export type Chestplate = ArmourPiece

export type Legs<T> = T

return {}
