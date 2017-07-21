namespace _Namespace {

// This file was GCode generated. Feel free to modify the result.
// DotNetCore OK!

using System;
using System.Collections.Generic;

// The type of objects to compare.
using TClass = _TClass;

/// <summary>
/// Compares _TClass(s) to determine whether they are equal. This class connot be
/// inherited.
/// </summary>
public sealed class _TClass()EqualityComparer : EqualityComparer<TClass>
{
    /// <summary>
    /// Determines whether the specified object is equal to the current object.
    /// </summary>
    public override bool Equals(object obj)
    {
        return (obj is TClass);
    }

    /// <summary>
    /// Serves as the default hash function. (Inherited from Object.)
    /// </summary>
    public override int GetHashCode()
    {
        return GetType().Name.GetHashCode();
    }

    /// <summary>
    /// Determine whether two objects of type _TClass are equal.
    /// </summary>
    /// <param name="x">The first _TClass to compare.</param>
    /// <param name="y">The second _TClass to compare.</param>
    /// <returns>true if the specified _TClass(s) are equal; otherwise, false.</returns>
    /// <remarks>The Equals method is reflexive, symmetric and transitive. That
    /// is, it returns true if used to compare an _TClass with itself; true for
    /// two _TClass x and y if it is true for y and x; and true for two _TClass
    /// x and z if it is true for x and y and also true for y and z.</remarks>
    public override bool Equals(TClass x, TClass y)
    {
        if (ReferenceEquals(x, y))
            return true;

        if (ReferenceEquals(null, x) && ReferenceEquals(null, y))
            return true;

        if (ReferenceEquals(null, x) || ReferenceEquals(null, y))
            return false;

        // *******************   IMPLEMENTATION    ****************************
        {
            // Missing
        }
        // *******************   IMPLEMENTATION    ****************************
        return true;
    }

    /// <summary>
    /// Serves as a hash function for the specified _TClass for hashing
    /// algorithms and data structures, such as a hash table.
    /// </summary>
    /// <param name="obj">The _TClass for which to get a hash code.</param>
    /// <returns>A hash code for the specified object.</returns>
    /// <exception cref="System.ArgumentNullException">The type of obj is a
    /// reference type and obj is null.</exception>
    public override int GetHashCode(TClass obj)
    {
        int hash = 0;
        // *******************   IMPLEMENTATION    ****************************
        {
            // Missing
        }
        // *******************   IMPLEMENTATION    ****************************
        return hash;
    }
}} // class:namespace
