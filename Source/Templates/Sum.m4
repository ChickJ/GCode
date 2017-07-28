namespace _Namespace {

// This file was GCode generated. Feel free to modify the result.
// .NET Core OK!
//     netcoreapp2.0
//     netstandard2.0

using System;

// The type of objects to compare.
using TClass = _TClass;

partial class _TClass { public class Sum
{
    /// <summary>
    /// Determine whether two objects of type _TClass are equal.
    /// </summary>
    /// <param name="x">The first _TClass to compare.</param>
    /// <param name="y">The second _TClass to compare.</param>
    /// <returns>true if the specified _TClass(s) are equal; otherwise, false.</returns>
    /// <remarks>The Equals method is reflexive, symmetric and
    /// transitive. That is, it returns true if used to compare an
    /// _TClass with itself; true for two _TClass x and y if it is
    /// true for y and x; and true for two _TClass
    /// x and z if it is true for x and y and also true for y and z.</remarks>
    public static bool AreEqual(TClass x, TClass y)
    {
        if (ReferenceEquals(x, y))
            return true;

        if (ReferenceEquals(null, x) && ReferenceEquals(null, y))
            return true;

        if (ReferenceEquals(null, x) || ReferenceEquals(null, y))
            return false;

        throw new System.NotImplementedException();
    }

    /// <summary>
    /// Serves as a hash function for the specified _TClass for hashing
    /// algorithms and data structures, such as a hash table.
    /// </summary>
    /// <param name="obj">The _TClass for which to get a hash code.</param>
    /// <returns>A hash code for the specified object.</returns>
    /// <exception cref="System.ArgumentNullException">The type of obj is a
    /// reference type and obj is null.</exception>
    public static int GetHashCode(TClass obj)
    {
        throw new System.NotImplementedException();
    }
}}} // class:class:namespace

#if COMPILE_UNIT_TESTS
namespace _Namespace {

using Xunit;

// The type of objects to compare.
using TClass = _TClass;

/// <summary>
/// Represents unit tests for _TClass().Sum
/// </summary>
public static class _TClass()SumClass {

/// <summary>
/// Represents unit tests for the _TClass().Sum.AreEqual
/// method.</summary>
public sealed class AreEqualMethod
{
    /// <summary>
    /// The sums of the same reference must be equal.
    /// </summary>
    [Fact, Trait("GCode", "Sum")]
    public void SameReferenceAreEqual()
    {
        var x = new TClass();
        var y = x;
        var areEqual = TClass.Sum.AreEqual(x, y);
        Assert.True(areEqual);
    }

    /// <summary>
    /// Null comparison returns false
    /// </summary>
    [Fact, Trait("Comparer", "Equality")]
    public void NullNotEqual()
    {
        var x = new TClass();
        var areEqual = TClass.Sum.AreEqual(x, null);
        Assert.False(areEqual);
    }
} // AreEqualMethod

}} // class:namespace
#endif // CompileUnitTests
