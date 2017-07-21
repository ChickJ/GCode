# GCode - A code generator

Welcome to my personal code generator. I use `gcode` on a daily basis to generate boring repetitive source code for my personal and professional programming projects.

Usage: `gcode -t <template> -D <name=value>`

These are common Gcode templates used in various situations:
  - EqualityComparer
  - ILayout

#### Example ####
Print an `EqualityComparer` snippet for the `IssueRequest` class in the console.

`gcode -t EqualityComparer -D _TClass=IssueRequest`

Output:
````
namespace SE.Net.Rest.Issue {

// DotNetCore OK!

using System;
using System.Collections.Generic;

// The type of objects to compare.
using TClass = IssueRequest;

/// <summary>
/// Compares IssueRequest(s) to determine whether they are equal. This class connot be
/// inherited.
/// </summary>
public sealed class IssueRequestEqualityComparer : EqualityComparer<TClass>
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
    /// Determine whether two objects of type IssueRequest are equal.
    /// </summary>
    /// <param name="x">The first IssueRequest to compare.</param>
    /// <param name="y">The second IssueRequest to compare.</param>
    /// <returns>true if the specified IssueRequest(s) are equal; otherwise, false.</returns>
    /// <remarks>The Equals method is reflexive, symmetric and transitive. That
    /// is, it returns true if used to compare an IssueRequest with itself; true for
    /// two IssueRequest x and y if it is true for y and x; and true for two IssueRequest
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
    /// Serves as a hash function for the specified IssueRequest for hashing
    /// algorithms and data structures, such as a hash table.
    /// </summary>
    /// <param name="obj">The IssueRequest for which to get a hash code.</param>
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

````
