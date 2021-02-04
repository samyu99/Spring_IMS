package com.virtusa.myapp.teamg.repository;

import com.virtusa.myapp.teamg.model.Sequence;

public interface SequenceRepository extends ModelRepository<Sequence>
{
  /**
   * Finds a sequence with a specified name.
   *
   * @param name The sequence name to find.
   * @return A {@link Sequence} if one with the specified name is found,
   * {@code null} otherwise.
   */
  Sequence findByName(String name);
}