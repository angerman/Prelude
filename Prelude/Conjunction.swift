//  Copyright (c) 2015 Rob Rix. All rights reserved.

// MARK: - Optional conjunction

/// Returns a tuple of two `Optional` values, or `nil` if either or both are `nil`.
public func &&& <T, U> (left: T?, right: U?) -> (T, U)? {
	return left.map { x in right.map { y in (x, y) } } ?? nil
}


// MARK: - Operators

infix operator &&& {
	/// Same associativity as &&.
	associativity left

	/// Same precedence as &&.
	precedence 120
}
